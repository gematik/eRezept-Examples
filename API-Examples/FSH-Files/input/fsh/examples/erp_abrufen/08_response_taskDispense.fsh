Instance: erp-abrufen-08-response-taskDispense
InstanceOf: Parameters
Usage: #example
* insert PackageMetaProfile(StructureDefinition/GEM_ERP_PR_PAR_DispenseOperation_Output)
* parameter[0]
  * name = "rxDispensation"
  * part[+]
    * name = "medicationDispense"
    * resource = erp-abrufen-08-response-taskDispense-medicationDispense
  * part[+]
    * name = "medication"
    * resource = med0314

Instance: erp-abrufen-08-response-taskDispense-medicationDispense
InstanceOf: MedicationDispense
Usage: #inline
* insert PackageMetaProfile(StructureDefinition/GEM_ERP_PR_MedicationDispense)
//* contained = med0314
* identifier.system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* identifier.value = "160.123.456.789.123.58"
* status = #completed
* medicationReference = Reference(med0314) "Sumatriptan-1a Pharma 100 mg Tabletten"
* subject.identifier.system = "http://fhir.de/sid/gkv/kvid-10"
* subject.identifier.value = "X123456789"
* performer.actor.identifier.system = "https://gematik.de/fhir/sid/telematik-id"
* performer.actor.identifier.value = "3-SMC-B-Testkarte-883110000129070"
* quantity = 1 '{Package}'
* whenHandedOver = "2020-03-20"
* dosageInstruction.text = "1-0-1-0"

Instance: med0314
InstanceOf: Medication
Usage: #inline
* insert PackageMetaProfile(StructureDefinition/GEM_ERP_PR_Medication)
//* meta.profile = "https://fhir.kbv.de/StructureDefinition/KBV_PR_ERP_Medication_PZN|1.1.0"
* extension[0].url = "https://gematik.de/fhir/epa-medication/StructureDefinition/drug-category-extension"
* extension[=].valueCoding.system = $epa-drug-category-cs
* extension[=].valueCoding.code = #00
* extension[+].url = "https://gematik.de/fhir/epa-medication/StructureDefinition/medication-id-vaccine-extension"
* extension[=].valueBoolean = false
* extension[+].url = "http://fhir.de/StructureDefinition/normgroesse"
* extension[=].valueCode = #N1
* code = $pzn#06313728
* code.text = "Sumatriptan-1a Pharma 100 mg Tabletten"
* form = $KBV_CS_SFHIR_KBV_DARREICHUNGSFORM#TAB
* amount.numerator.extension.url = "https://gematik.de/fhir/epa-medication/StructureDefinition/medication-total-quantity-formulation-extension"
* amount.numerator.extension.valueString = "10"
* amount.numerator = $unitsofmeasure#{tbl} "Tabletten"
* amount.denominator.value = 1