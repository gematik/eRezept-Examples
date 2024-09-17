Instance: erp-abrufen-06-request-taskClose
InstanceOf: GEM_ERP_PR_PAR_CloseOperation_Input
Usage: #example
* parameter[rxDispensation]
  * name = "rxDispensation"
  * part[medicationDispense]
    * name = "medicationDispense"
    * resource = erp-abrufen-06-request-taskClose-medicationDispense
  * part[medication]
    * name = "medication"
    * resource = med0314


Instance: erp-abrufen-06-request-taskClose-medicationDispense
InstanceOf: GEM_ERP_PR_MedicationDispense
Usage: #inline
//* insert PackageMetaProfile(StructureDefinition/GEM_ERP_PR_MedicationDispense)
* identifier[prescriptionID].system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* identifier[prescriptionID].value = "160.123.456.789.123.58"
* status = #completed
* medicationReference = Reference(med0314) "Sumatriptan-1a Pharma 100 mg Tabletten"
* subject.identifier.system = "http://fhir.de/sid/gkv/kvid-10"
* subject.identifier.value = "X123456789"
* performer.actor.identifier.system = "https://gematik.de/fhir/sid/telematik-id"
* performer.actor.identifier.value = "3-SMC-B-Testkarte-883110000129070"
* quantity = 1 '{Package}'
* whenHandedOver = "2024-03-20"
* dosageInstruction.text = "1-0-1-0"