#!/bin/bash

# Function to convert JSON to XML (to be implemented)
json_to_xml() {
    input_file="$1"
    output_file="$2"    

    # echo "Input file: $input_file"
    # echo "Output file: $output_file"

    input_dir=$(dirname "$input_file")
    base_filename=$(basename "$input_file" .json)
    output_subdir=$(dirname "$output_file")
    output_filename="$(basename "$output_file")" # .xml" #"$base_filename.xml"

    # echo "Converting $input_file to $output_filename"

    # Save the current directory
    original_dir=$(pwd)

    # Change to the directory of the input file
    cd "$input_dir" || exit

    # Implement the JSON to XML conversion logic here
    fhir push "$base_filename.json"
    fhir save "$output_filename" --xml

    # Go back to the original directory
    cd "$original_dir" || exit

    # echo "Output file: $input_dir/$output_filename"

    mv "$input_dir/$output_filename" "$output_subdir"
    # echo "Copied "$input_dir/$output_filename" to $output_subdir"

    echo "$input_dir/$output_filename"
}

# Function to rename the file based on the meta.id field
rename_file() {
    input_file="$1"

    # Extract the filename without the directory path
    filename=$(basename -- "$input_file")
    new_filename=$filename

    # Check if the JSON file contains the "meta.id" field
    meta_id=$(jq -r 'try .meta.id // empty' "$input_file")

    # Check if the meta.id is not null or empty
    if [[ -n "$meta_id" && "$meta_id" != "null" ]]; then
        # Construct the new filename
        new_filename="${meta_id}.json"
        new_filepath="$output_directory/$new_filename"

        # Remove the "meta.id" field from the JSON file
        jq 'del(.meta.id)' "$input_file" > "$new_filepath" #> "$input_file" 

        # Remove the original file if the new file was successfully created
        if [[ -f "$new_filepath" ]]; then
            rm "$input_file"
        fi
    fi

    echo "$new_filename"
}

# Fallback for `realpath` if it's not available
get_absolute_path() {
    if command -v realpath >/dev/null 2>&1; then
        realpath "$1"
    else
        echo "$(cd "$(dirname "$1")"; pwd)/$(basename "$1")"
    fi
}

# Function to check if an element exists in the array
file_in_array() {
    local file="$1"
    shift
    local files=("$@")
    
    for item in "${files[@]}"; do
        if [[ "$item" == "$file" ]]; then
            return 0  # Found
        fi
    done
    return 1  # Not found
}

# Function to process files
process_files() {
    input_dir=$(get_absolute_path "$1")
    output_dir=$(get_absolute_path "$2")

    # echo "Input directory: $input_dir"
    # echo "Output directory: $output_dir"
    # Loop through the files in the input directory
    for filename in "$input_dir"/*; do
        base_filename=$(basename "$filename")        

        base_filename=$(rename_file "$filename")        

        # Extract parts of the filename based on pattern matching
        if [[ "$base_filename" =~ -([^/]+)-([0-9]) ]] || [[ "$base_filename" == "CapabilityStatement-misc-api-endpoints-CapabilityStatement-RU.json" ]]; then            
            if [[ "$base_filename" == "CapabilityStatement-misc-api-endpoints-CapabilityStatement-RU.json" ]]; then
                folder_name="misc_api_endpoints"
                file_name="CapabilityStatement_RU.json"       
            else
                folder_name="${BASH_REMATCH[1]}"
                # file_digit_index=$(expr index "$base_filename" "${BASH_REMATCH[2]}")
                file_digit_index="${base_filename%%"${BASH_REMATCH[2]}"*}"
                file_digit_index=${#file_digit_index}
                file_name="${base_filename:$file_digit_index}"
                file_name="${file_name//-/_}"

                # Replace dashes with underscores in the folder name
                folder_name="${folder_name//-/_}" 
            fi                       

            # Modify folder and filenames based on special cases
            if [[ "$folder_name" == "erp_eml_epa_notes" ]]; then
                folder_name="erp_eml-epa-notes"
                if [[ "$file_name" == "01_Parameters_ExampleCloseInputParameters.json" ]]; then
                    file_name="01_Parameters-ExampleCloseInputParameters.json"
                elif [[ "$file_name" == "02_Parameters_ExampleInputMultipleDispenses.json" ]]; then
                    file_name="02_Parameters-ExampleDispenseInputParametersMultipleMedicationDispenses.json"
                elif [[ "$file_name" == "03_Medication_Medication_Rezeptur.json" ]]; then
                    file_name="03_Medication-Medication-Rezeptur.json"
                elif [[ "$file_name" == "04_Medication_Medication_Kombipackung.json" ]]; then
                    file_name="04_Medication-Medication-Kombipackung.json"
                fi
            fi

            if [[ "$folder_name" == "erp_versicherte" ]]; then
                if [[ "$file_name" == "05_response_get_single_medicationdispense_by_id.json" ]]; then
                    file_name="05_response_get-single-medicationdispense-by-id.json"
                elif [[ "$file_name" == "06_response_get_multiple_medication_dispense.json" ]]; then
                    file_name="06_response_get-multiple-medication-dispense.json"
                fi
            fi

            if [[ "$folder_name" == "erp_diga_01_task" ]]; then
                folder_name="erp_diga"
                file_name="01_task_162_create.json"
            fi            

            # Create the output subdirectory if it doesn't exist
            output_subdir="$output_dir/$folder_name"
            mkdir -p "$output_subdir"
            # echo "Creating $output_subdir for $file_name"

            # Create the output file path with .xml extension
            output_path="$output_subdir/$(basename "$file_name" .json).xml"
            echo "$output_path"

            echo "$base_filename"
            #echo "$filename"
            
            # Use file_in_array function to check if the file is in the files_to_copy list
            if file_in_array "$base_filename" "${files_to_copy[@]}"; then
                output_path="$output_subdir/$file_name"  # Retain the original file name for copied files
                cp "$filename" "$output_path"
                # echo "Copied $filename to $output_path"
            else
                # Get the new output filename from json_to_xml
                output_filename=$(json_to_xml "$filename" "$output_path")
                # echo "$output_filename"
                #cp "$output_filename" "$output_subdir"
                #echo "Copied $output_filename to $output_subdir"
            fi
        else
            echo "Filename $base_filename does not match expected pattern."
        fi
    done
}

# Usage:
# process_files <input_dir> <output_dir>

# List of files to copy directly
files_to_copy=(
    "Bundle-authentisieren-07-response-InnerVau.json"

    "Bundle-erp-steuerung-durch-le-08-response-taskGet169Versicherter.json"
    "Binary-erp-alternative-zuweisung-03-certificate-in-apovzd.json"
    "Parameters-erp-chargeItem-10-patch-chargeitem-request.json"

    "Bundle-erp-chargeItem-08-GET-ChargeItems-Response.json"
    "Bundle-erp-chargeItem-09-GET-ChargeItem-Response.json"
    "ChargeItem-erp-chargeItem-11-PATCH-ChargeItem-Response.json"
    
    "Communication-erp-communication-01-request-PostPatientToPharmacy.json"
    "Communication-erp-communication-02-response-PostPatientToPharmacy.json"
    "Communication-erp-communication-05-request-RezeptZuweisen.json"
    "Communication-erp-communication-06-response-RezeptZuweisen.json"
    "Bundle-erp-communication-07-response-GetMessages.json"

    "Consent-erp-consent-01-request-PostConsent.json"
    "Consent-erp-consent-02-response-PostConsent.json"
    "Bundle-erp-consent-03-response-GetConsent.json"

    "Bundle-erp-diga-02-response-fhir-vzd.json"
    "Bundle-erp-diga-02-response-taskGetSingle.json"
    "Communication-erp-diga-03-communication-zuweisung-diga.json"
    "MedicationDispense-erp-diga-04-medication-dispense-diga.json"
    "Medication-erp-eml-epa-notes-06-RezepturVerordnung-PZN-Mapped.json"
    "Medication-erp-eml-epa-notes-12-ibm-medication-compounding-Mapped.json"
    "Medication-erp-eml-epa-notes-14-ibm-medication-compounding-amount-Mapped.json"

    "Bundle-erp-versicherte-01-response-taskGetAll.json"
    "Bundle-erp-versicherte-02-response-taskGetSingle.json"
    "Bundle-erp-versicherte-03-response-GetLocation.json"
    "Bundle-erp-versicherte-04-response-getDispense.json"
    "Bundle-erp-versicherte-04-response-getDispenseMultiple1.json"
    "Bundle-erp-versicherte-04-response-getDispenseMultiple2.json"
    "Bundle-erp-versicherte-05-response-get-single-medicationdispense-by-id.json"
    "Bundle-erp-versicherte-06-response-get-multiple-medication-dispense.json"
    "Bundle-erp-versicherte-07-response-getAuditEvent.json"    
)
 

process_files "$1" "$2"
