Instance: 169.000.033.491.280.78
InstanceOf: Task
Usage: #inline
* meta.profile = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_PR_Task|1.3"
* intent = #order
* extension[0].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_PrescriptionType"
* extension[=].valueCoding = $GEM_ERP_CS_FlowType#169 "Muster 16 (Direkte Zuweisung)"
* extension[+].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_AcceptDate"
* extension[=].valueDate = "2022-06-03"
* extension[+].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_ExpiryDate"
* extension[=].valueDate = "2022-06-03"
* identifier.system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* identifier.value = "169.000.033.491.280.78"
* status = #ready
* authoredOn = "2022-03-18T15:26:00+00:00"
* performerType = urn:ietf:rfc:3986#urn:oid:1.2.276.0.76.4.54 "Öffentliche Apotheke"
* for.identifier.system = "http://fhir.de/sid/gkv/kvid-10"
* for.identifier.value = "X123456789"
* lastModified = "2022-03-18T15:27:00+00:00"
* input[0].type = $GEM_ERP_CS_DocumentType#1 "Health Care Provider Prescription"
* input[=].valueReference = Reference(281a985c-f25b-4aae-91a6-41ad744080b0)
* input[+].type = $GEM_ERP_CS_DocumentType#2 "Patient Confirmation"
* input[=].valueReference = Reference(f8c2298f-7c00-4a68-af29-8a2862d55d43)