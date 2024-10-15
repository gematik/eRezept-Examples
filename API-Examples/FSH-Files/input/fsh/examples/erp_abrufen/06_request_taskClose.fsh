Instance: erp-abrufen-06-request-taskClose
InstanceOf: MedicationDispense
Usage: #example
* insert PackageMetaProfile(StructureDefinition/GEM_ERP_PR_MedicationDispense)
* contained = med0314
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