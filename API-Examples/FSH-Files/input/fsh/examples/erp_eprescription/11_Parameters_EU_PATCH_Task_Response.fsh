//TODO: Improve FSH when workflow -rc is published
Instance: erp-eprescription-10-PATCH-Task-Response
InstanceOf: Task
Title:   "Task activated by (Z)PVS/KIS via $activate operation that carries a dispensable ePrescription"
Usage: #example
* meta.profile = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_PR_Task"
* meta.tag.display = "Task in READY state activated by (Z)PVS/KIS via $activate operation"
* extension[0].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_PrescriptionType"
* extension[=].valueCoding = https://gematik.de/fhir/erp/CodeSystem/GEM_ERP_CS_FlowType#160 "Muster 16 (Apothekenpflichtige Arzneimittel)"
* extension[+].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_AcceptDate"
* extension[=].valueDate = "2026-04-02"
* extension[+].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_ExpiryDate"
* extension[=].valueDate = "2026-06-02"
* extension[+].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_EU_IsRedeemableByPatientAuthorization"
* extension[=].valueBoolean = true
* identifier[+].system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* identifier[=].value = "160.000.000.000.000.01"
* identifier[+].system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_AccessCode"
* identifier[=].value = "777bea0e13cc9c42ceec14aec3ddee2263325dc2c6c699db115f58fe423607ea"
* status = #ready
* intent = #order
* authoredOn = "2026-03-18T15:26:00+00:00"
* performerType[+].coding = https://gematik.de/fhir/erp/CodeSystem/GEM_ERP_CS_OrganizationType#urn:oid:1.2.276.0.76.4.54 "Öffentliche Apotheke"
* for.identifier.system = "http://fhir.de/sid/gkv/kvid-10"
* for.identifier.value = "X123456789"
* lastModified = "2026-03-18T15:27:00+00:00"
* input[+].type.coding = https://gematik.de/fhir/erp/CodeSystem/GEM_ERP_CS_DocumentType#1 "Health Care Provider Prescription"
* input[=].valueReference.reference = "281a985c-f25b-4aae-91a6-41ad744080b0"
* input[+].type.coding = https://gematik.de/fhir/erp/CodeSystem/GEM_ERP_CS_DocumentType#2 "Patient Confirmation"
* input[=].valueReference.reference = "f8c2298f-7c00-4a68-af29-8a2862d55d43"