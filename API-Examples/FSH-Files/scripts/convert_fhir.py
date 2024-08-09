import json
import xml.etree.ElementTree as ET
import xml.dom.minidom
import sys
import os
import shutil
import re
from fhir_field_order import FHIR_FIELD_ORDER
from files_to_copy import files_to_copy

def reorder_json_fields(json_data, resource_type):
    if resource_type not in FHIR_FIELD_ORDER:
        return json_data

    ordered_json_data = {}
    field_order = FHIR_FIELD_ORDER[resource_type]

    for field in field_order:
        if field in json_data:
            if isinstance(json_data[field], dict) and 'resourceType' in json_data[field]:
                nested_resource_type = json_data[field]['resourceType']
                ordered_json_data[field] = reorder_json_fields(json_data[field], nested_resource_type)
            elif isinstance(json_data[field], dict) and field == 'meta':
                ordered_json_data[field] = reorder_json_fields(json_data[field], 'meta')
            elif isinstance(json_data[field], dict) and field in ['entry', 'coding', 'valueCoding', 'extension', 'performerType', 'valueCodeableConcept']:
                ordered_json_data[field] = reorder_json_fields(json_data[field], field)
            elif isinstance(json_data[field], list):
                ordered_json_data[field] = []
                for item in json_data[field]:
                    if isinstance(item, dict) and 'resourceType' in item:
                        nested_resource_type = item['resourceType']
                        ordered_json_data[field].append(reorder_json_fields(item, nested_resource_type))
                    elif isinstance(item, dict) and field in ['entry', 'coding', 'valueCoding', 'extension', 'performerType', 'valueCodeableConcept']:
                        ordered_json_data[field].append(reorder_json_fields(item, field))                    
                    else:
                        ordered_json_data[field].append(item)
            else:
                ordered_json_data[field] = json_data[field]
            del json_data[field]

    for remaining_field, value in json_data.items():
        if isinstance(value, dict) and 'resourceType' in value:
            nested_resource_type = value['resourceType']
            ordered_json_data[remaining_field] = reorder_json_fields(value, nested_resource_type)
        elif isinstance(value, dict) and remaining_field == 'meta':
            ordered_json_data[remaining_field] = reorder_json_fields(value, 'meta')
        elif isinstance(value, dict) and remaining_field in ['entry', 'coding', 'valueCoding', 'extension', 'performerType', 'valueCodeableConcept']:
            ordered_json_data[remaining_field] = reorder_json_fields(value, remaining_field)
        elif isinstance(value, list):
            ordered_json_data[remaining_field] = []
            for item in value:
                if isinstance(item, dict) and 'resourceType' in item:
                    nested_resource_type = item['resourceType']
                    ordered_json_data[remaining_field].append(reorder_json_fields(item, nested_resource_type))
                elif isinstance(item, dict) and remaining_field in ['entry', 'coding', 'valueCoding', 'extension', 'performerType', 'valueCodeableConcept']:
                    ordered_json_data[remaining_field].append(reorder_json_fields(item, remaining_field))                
                else:
                    ordered_json_data[remaining_field].append(item)
        else:
            ordered_json_data[remaining_field] = value

    return ordered_json_data

def process_bundle_entry(entry):
    if 'resource' in entry:
        resource = entry['resource']
        if 'resourceType' in resource:
            resource_type = resource['resourceType']
            entry['resource'] = reorder_json_fields(resource, resource_type)
    return entry

def json_to_xml(json_file, xml_file):
    with open(json_file, 'r') as f:
        json_data = json.load(f)

    resource_type = json_data.get('resourceType')
    if not resource_type:
        print(f"No resourceType found in {json_file}")
        return
    
    if resource_type == 'Bundle' and 'entry' in json_data:
        json_data['entry'] = [process_bundle_entry(entry) for entry in json_data['entry']]

    json_data = reorder_json_fields(json_data, resource_type)

    def build_element(key, value, parent):
        if isinstance(value, dict):
            if key == 'extension':
                element = ET.SubElement(parent, key)
                element.set('url', value.get('url'))
                for k, v in value.items():
                    if k != 'url':
                        build_element(k, v, element)
            elif key == 'valueCoding':
                element = ET.SubElement(parent, key)
                for k, v in value.items():
                    sub_element = ET.SubElement(element, k)
                    sub_element.set('value', str(v))
            elif key in ['identifier', 'coding']:
                element = ET.SubElement(parent, key)
                for k, v in value.items():
                    sub_element = ET.SubElement(element, k)
                    sub_element.set('value', str(v))
            elif 'resourceType' in value:
                resource_element = ET.SubElement(parent, 'resource')
                resource_type_element = ET.SubElement(resource_element, value['resourceType'], xmlns="http://hl7.org/fhir")
                for k, v in value.items():
                    if k != 'resourceType':
                        build_element(k, v, resource_type_element)
            else:
                element = ET.SubElement(parent, key)
                for k, v in value.items():
                    build_element(k, v, element)
        elif isinstance(value, list):
            for item in value:
                build_element(key, item, parent)
        else:
            element = ET.SubElement(parent, key)
            element.set('value', str(value))

    def create_xml_from_json(json_data, root):
        for key, value in json_data.items():
            if key != 'resourceType':
                build_element(key, value, root)

    root = ET.Element(resource_type, xmlns="http://hl7.org/fhir")
    create_xml_from_json(json_data, root)
    
    xml_str = ET.tostring(root, encoding='utf-8', method='xml')
    parsed_str = xml.dom.minidom.parseString(xml_str)
    pretty_xml_str = parsed_str.toprettyxml(indent="    ")

    with open(xml_file, 'w') as f:
        f.write(pretty_xml_str)

def copy_template_files(template_dir, output_dir):
    if not os.path.exists(template_dir):
        print(f"Template directory {template_dir} does not exist.")
        return

    for root, dirs, files in os.walk(template_dir):
        for file in files:
            source = os.path.join(root, file)
            relative_path = os.path.relpath(source, template_dir)
            destination = os.path.join(output_dir, relative_path)

            os.makedirs(os.path.dirname(destination), exist_ok=True)
            shutil.copy2(source, destination)

def process_files(input_dir, output_dir):
    #files_to_copy = files_to_copy.split(',') if files_to_copy else []

    for filename in os.listdir(input_dir):
        input_path = os.path.join(input_dir, filename)
        
        match = re.search(r'-(.*?)-(\d)', filename)
        if not match:
            print(f"Filename {filename} does not match expected pattern.")
            continue

        folder_name = match.group(1).replace('-', '_')       
        file_digit_index = filename.find(match.group(2))
        file_name = filename[file_digit_index:].replace('-', '_')

        # Exceptions
        if folder_name == "erp_eml_epa_notes":
            folder_name = "erp_eml-epa-notes"
            if file_name == "01_Parameters_ExampleCloseInputParameters.json":
                file_name = "01_Parameters-ExampleCloseInputParameters.json"
            elif file_name== "02_Parameters_ExampleInputMultipleDispenses.json":
                file_name = "02_Parameters-ExampleDispenseInputParametersMultipleMedicationDispenses.json"
            elif file_name== "03_Medication_Medication_Rezeptur.json":
                file_name = "03_Medication-Medication-Rezeptur.json"
            elif file_name== "04_Medication_Medication_Kombipackung.json":
                file_name = "04_Medication-Medication-Kombipackung.json"

        if folder_name == "erp_versicherte":
            if file_name == "05_response_get_single_medicationdispense_by_id.json":
                file_name = "05_response_get-single-medicationdispense-by-id.json"

        output_subdir = os.path.join(output_dir, folder_name)
        os.makedirs(output_subdir, exist_ok=True)

        output_path = os.path.join(output_subdir, os.path.splitext(file_name)[0] + '.xml')

        if filename in files_to_copy:
            output_path = os.path.join(output_subdir, file_name)
            shutil.copy(input_path, output_path)
        else:
            json_to_xml(input_path, output_path)

if __name__ == "__main__":
    input_dir = sys.argv[1]
    output_dir = sys.argv[2]
    #files_to_copy = sys.argv[3] if len(sys.argv) > 3 else ""
    template_dir = sys.argv[3] if len(sys.argv) > 3 else ""

    copy_template_files(template_dir, output_dir)
    process_files(input_dir, output_dir)
