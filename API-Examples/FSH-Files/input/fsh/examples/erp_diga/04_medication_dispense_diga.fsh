Instance: erp-diga-04-medication-dispense-diga
InstanceOf: MedicationDispense
Usage: #example
* id = "162.123.456.789.123.58-4"
* meta.id = "MedicationDispense-erp-diga-04-medication-dispense-diga"
* meta.profile = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_PR_MedicationDispense_DiGA|1.4"
* extension.url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_RedeemCode"
* extension.valueString = "DE12345678901234"
* identifier.system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* identifier.value = "162.123.456.789.123.58"
* status = #completed
* medicationReference.identifier.system = "http://fhir.de/CodeSystem/ifa/pzn"
* medicationReference.identifier.value = "12345678"
* medicationReference.display = "Gematico Diabetestherapie"
* subject.identifier.system = "http://fhir.de/sid/gkv/kvid-10"
* subject.identifier.value = "X123456789"
* performer.actor.identifier.system = "https://gematik.de/fhir/sid/telematik-id"
* performer.actor.identifier.value = "8-SMC-B-Testkarte-883110000095957"
* whenHandedOver = "2024-04-03"