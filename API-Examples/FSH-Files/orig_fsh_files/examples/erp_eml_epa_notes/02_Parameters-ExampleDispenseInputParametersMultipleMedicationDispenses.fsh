Instance: erp-eml-epa-notes-02-Parameters-ExampleInputMultipleDispenses
InstanceOf: Parameters
Usage: #example
* meta.profile = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_PR_DispenseOperation_Input|{{profileVersion}}"
* parameter[0].name = "rxDispensation"
* parameter[=].part[0].name = "medicationDispense"
* parameter[=].part[=].resource.resourceType = "MedicationDispense"
* parameter[=].part[=].resource.id = "Example-MedicationDispense"
* parameter[=].part[=].resource.meta.profile = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_PR_MedicationDispense|{{profileVersion}}"
* parameter[=].part[=].resource.identifier.system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* parameter[=].part[=].resource.identifier.value = "160.000.033.491.280.78"
* parameter[=].part[=].resource.status = #completed
* parameter[=].part[=].resource.medicationReference.reference = "SumatripanMedication"
* parameter[=].part[=].resource.subject.identifier.system = "http://fhir.de/sid/gkv/kvid-10"
* parameter[=].part[=].resource.subject.identifier.value = "X123456789"
* parameter[=].part[=].resource.performer.actor.identifier.system = "https://gematik.de/fhir/sid/telematik-id"
* parameter[=].part[=].resource.performer.actor.identifier.value = "3-SMC-B-Testkarte-883110000095957"
* parameter[=].part[=].resource.whenPrepared = "2024-04-03"
* parameter[=].part[=].resource.whenHandedOver = "2024-04-03"
* parameter[=].part[+].name = "medication"
* parameter[=].part[=].resource.resourceType = "Medication"
* parameter[=].part[=].resource.id = "SumatripanMedication"
* parameter[=].part[=].resource.meta.profile = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_PR_Medication|{{profileVersion}}"
* parameter[=].part[=].resource.extension[0].url = "https://gematik.de/fhir/dev-epa-medication/StructureDefinition/drug-category-extension"
* parameter[=].part[=].resource.extension[=].valueCoding.code = #00
* parameter[=].part[=].resource.extension[+].url = "https://gematik.de/fhir/dev-epa-medication/StructureDefinition/medication-id-vaccine-extension"
* parameter[=].part[=].resource.extension[=].valueBoolean = false
* parameter[=].part[=].resource.extension[+].url = "http://fhir.de/StructureDefinition/normgroesse"
* parameter[=].part[=].resource.extension[=].valueCode = #N1
* parameter[=].part[=].resource.code.coding.system = "http://fhir.de/CodeSystem/ifa/pzn"
* parameter[=].part[=].resource.code.coding.code = #06313728
* parameter[=].part[=].resource.code.text = "Sumatriptan-1a Pharma 100 mg Tabletten"
* parameter[=].part[=].resource.form.coding.system = "https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_KBV_DARREICHUNGSFORM"
* parameter[=].part[=].resource.form.coding.code = #TAB
* parameter[=].part[=].resource.amount.numerator.extension.url = "https://gematik.de/fhir/dev-epa-medication/StructureDefinition/medication-total-quantity-formulation-extension"
* parameter[=].part[=].resource.amount.numerator.extension.valueString = "20 St."
* parameter[=].part[=].resource.amount.numerator.value = 20
* parameter[=].part[=].resource.amount.numerator.unit = "St"
* parameter[=].part[=].resource.amount.denominator.value = 1
* parameter[+].name = "rxDispensation"
* parameter[=].part[0].name = "medicationDispense"
* parameter[=].part[=].resource.resourceType = "MedicationDispense"
* parameter[=].part[=].resource.id = "Example-MedicationDispense-2"
* parameter[=].part[=].resource.meta.profile = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_PR_MedicationDispense|{{profileVersion}}"
* parameter[=].part[=].resource.identifier.system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* parameter[=].part[=].resource.identifier.value = "160.153.303.257.459"
* parameter[=].part[=].resource.status = #completed
* parameter[=].part[=].resource.medicationReference.reference = "Medication-Without-Strength-Code"
* parameter[=].part[=].resource.subject.identifier.system = "http://fhir.de/sid/gkv/kvid-10"
* parameter[=].part[=].resource.subject.identifier.value = "X123456789"
* parameter[=].part[=].resource.performer.actor.identifier.system = "https://gematik.de/fhir/sid/telematik-id"
* parameter[=].part[=].resource.performer.actor.identifier.value = "3-SMC-B-Testkarte-883110000095957"
* parameter[=].part[=].resource.whenPrepared = "2024-04-03"
* parameter[=].part[=].resource.whenHandedOver = "2024-04-03"
* parameter[=].part[+].name = "medication"
* parameter[=].part[=].resource.resourceType = "Medication"
* parameter[=].part[=].resource.id = "Medication-Without-Strength-Code"
* parameter[=].part[=].resource.meta.profile = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_PR_Medication|{{profileVersion}}"
* parameter[=].part[=].resource.code.text = "Infusion bestehend aus 85mg Doxorubicin aufgeloest zur Verabreichung in 250ml 5-%iger (50 mg/ml) Glucose-Infusionsloesung"
* parameter[=].part[=].resource.form.coding.system = "http://standardterms.edqm.eu"
* parameter[=].part[=].resource.form.coding.code = #11210000
* parameter[=].part[=].resource.form.coding.display = "Solution for infusion"
* parameter[=].part[=].resource.ingredient.itemCodeableConcept.coding.system = "http://fhir.de/CodeSystem/bfarm/atc"
* parameter[=].part[=].resource.ingredient.itemCodeableConcept.coding.code = #L01DB01
* parameter[=].part[=].resource.ingredient.itemCodeableConcept.coding.display = "Doxorubicin"
* parameter[=].part[=].resource.ingredient.isActive = true
* parameter[=].part[=].resource.ingredient.strength.numerator.value = 85
* parameter[=].part[=].resource.ingredient.strength.numerator.unit = "mg"
* parameter[=].part[=].resource.ingredient.strength.numerator.system.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* parameter[=].part[=].resource.ingredient.strength.numerator.system.extension.valueCode = #unknown
* parameter[=].part[=].resource.ingredient.strength.numerator.code.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* parameter[=].part[=].resource.ingredient.strength.numerator.code.extension.valueCode = #unknown
* parameter[=].part[=].resource.ingredient.strength.denominator.value = 250
* parameter[=].part[=].resource.ingredient.strength.denominator.unit = "Milliliter"
* parameter[=].part[=].resource.ingredient.strength.denominator.system.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* parameter[=].part[=].resource.ingredient.strength.denominator.system.extension.valueCode = #unknown
* parameter[=].part[=].resource.ingredient.strength.denominator.code.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* parameter[=].part[=].resource.ingredient.strength.denominator.code.extension.valueCode = #unknown