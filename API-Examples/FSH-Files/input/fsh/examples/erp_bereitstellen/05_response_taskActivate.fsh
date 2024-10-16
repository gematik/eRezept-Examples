Instance: erp-bereitstellen-05-response-taskActivate
InstanceOf: Task
Usage: #example
* id = "160.123.456.789.123.58-1"
* meta.id = "Task-erp-bereitstellen-05-response-taskActivate"
* meta.versionId = "2"
* meta.lastUpdated = "2020-02-18T10:05:05.038+00:00"
* meta.source = "#AsYR9plLkvONJAiv"
* insert PackageMetaProfile(StructureDefinition/GEM_ERP_PR_Task)
* extension[0].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_PrescriptionType"
* extension[=].valueCoding = $GEM_ERP_CS_FlowType#160 "Muster 16 (Apothekenpflichtige Arzneimittel)"
* extension[+].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_ExpiryDate"
* extension[=].valueDate = "2020-06-02"
* extension[+].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_AcceptDate"
* extension[=].valueDate = "2020-04-01"
* identifier[0].use = #official
* identifier[=].system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* identifier[=].value = "160.123.456.789.123.58"
* identifier[+].use = #official
* identifier[=].system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_AccessCode"
* identifier[=].value = "777bea0e13cc9c42ceec14aec3ddee2263325dc2c6c699db115f58fe423607ea"
* status = #ready
* intent = #order
* for.identifier.system = "http://fhir.de/sid/gkv/kvid-10"
* for.identifier.value = "X123456789"
* authoredOn = "2020-03-02T08:25:05+00:00"
* lastModified = "2020-03-02T08:45:05+00:00"
* performerType = $GEM_ERP_CS_OrganizationType#urn:oid:1.2.276.0.76.4.54 "Öffentliche Apotheke"
* input[0].type = $GEM_ERP_CS_DocumentType#1 "Health Care Provider Prescription"
* input[=].valueReference = Reference(281a985c-f25b-4aae-91a6-41ad744080b0)
* input[+].type = $GEM_ERP_CS_DocumentType#2
* input[=].valueReference = Reference(f8c2298f-7c00-4a68-af29-8a2862d55d43)