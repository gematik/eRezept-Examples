Instance: erp-steuerung-durch-le-04-response-taskActivate169
InstanceOf: Task
Usage: #example
* insert PackageMetaProfile(StructureDefinition/GEM_ERP_PR_Task)
* extension[0].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_PrescriptionType"
* extension[=].valueCoding = $GEM_ERP_CS_FlowType#169 "Muster 16 (Direkte Zuweisung)"
* extension[+].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_AcceptDate"
* extension[=].valueDate = "2022-06-30"
* extension[+].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_ExpiryDate"
* extension[=].valueDate = "2022-06-30"
* identifier[0].system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* identifier[=].value = "169.000.004.839.514.95"
* identifier[+].system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_AccessCode"
* identifier[=].value = "777bea0e13cc9c42ceec14aec3ddee2263325dc2c6c699db115f58fe423607ea"
* status = #ready
* intent = #order
* for.identifier.system = "http://fhir.de/sid/gkv/kvid-10"
* for.identifier.value = "X123456789"
* authoredOn = "2022-03-18T15:26:00+00:00"
* lastModified = "2022-03-18T15:27:00+00:00"
* performerType = $GEM_ERP_CS_OrganizationType#urn:oid:1.2.276.0.76.4.54 "Öffentliche Apotheke"
* input[0].type = $GEM_ERP_CS_DocumentType#1 "Health Care Provider Prescription"
* input[=].valueReference = Reference(281a985c-f25b-4aae-91a6-41ad744080b0)
* input[+].type = $GEM_ERP_CS_DocumentType#2 "Patient Confirmation"
* input[=].valueReference = Reference(f8c2298f-7c00-4a68-af29-8a2862d55d43)