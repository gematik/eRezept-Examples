Instance: erp-abrufen-03-request-recovery-secret
InstanceOf: Bundle
Usage: #example
* type = #collection
* timestamp = "2024-02-26T05:42:19.086+00:00"
* link.relation = "self"
* link.url = "https://erp-ref.zentral.erp.splitdns.ti-dienste.de/Task/160.123.456.789.123.58"
* entry[0].fullUrl = "https://erp-ref.zentral.erp.splitdns.ti-dienste.de/Task/160.123.456.789.123.58"
* entry[=].resource = Inline-Instance-for-cb8b3d4b-be1b-4934-89a4-9ac3fa9fdfa0-1
* entry[+].fullUrl = "urn:uuid:281a985c-f25b-4aae-91a6-41ad744080b0"
* entry[=].resource = 281a985c-f25b-4aae-91a6-41ad744080b0

Instance: Inline-Instance-for-cb8b3d4b-be1b-4934-89a4-9ac3fa9fdfa0-1
InstanceOf: Task
Usage: #inline
* id = "160.123.456.789.123.58"
* insert PackageMetaProfile(StructureDefinition/GEM_ERP_PR_Task)
* extension[0].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_PrescriptionType"
* extension[=].valueCoding.system = $GEM_ERP_CS_FlowType
* extension[=].valueCoding.code = #160
* extension[=].valueCoding.display = "Muster 16 (Apothekenpflichtige Arzneimittel)"
//* extension[=].valueCoding = $GEM_ERP_CS_FlowType#160 "Muster 16 (Apothekenpflichtige Arzneimittel)"
* extension[+].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_ExpiryDate"
* extension[=].valueDate = "2020-06-02"
* extension[+].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_AcceptDate"
* extension[=].valueDate = "2020-04-01"
* identifier[0].use = #official
* identifier[=].system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* identifier[=].value = "160.123.456.789.123.58"
* identifier[+].use = #official
* identifier[=].system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_Secret"
* identifier[=].value = "c36ca26502892b371d252c99b496e31505ff449aca9bc69e231c58148f6233cf"
* status = #in-progress
* intent = #order
* for.identifier.system = "http://fhir.de/sid/gkv/kvid-10"
* for.identifier.value = "X123456789"
* authoredOn = "2020-03-02T08:25:05+00:00"
* lastModified = "2020-03-02T08:45:05+00:00"
* performerType.coding.system = $GEM_ERP_CS_OrganizationType
* performerType.coding.code = #urn:oid:1.2.276.0.76.4.54
* performerType.coding.display = "Öffentliche Apotheke"
//* performerType = $GEM_ERP_CS_OrganizationType#urn:oid:1.2.276.0.76.4.54 "Öffentliche Apotheke"
* performerType.text = "Öffentliche Apotheke"
* owner.identifier.system = "https://gematik.de/fhir/sid/telematik-id"
* owner.identifier.value = "3-2-APO-XanthippeVeilchenblau01"
* input.type.coding.system = $GEM_ERP_CS_DocumentType
* input.type.coding.code = #1
//* input.type = $GEM_ERP_CS_DocumentType#1
* input.valueReference = Reference(281a985c-f25b-4aae-91a6-41ad744080b0)

Instance: 281a985c-f25b-4aae-91a6-41ad744080b0
InstanceOf: Binary
Usage: #inline
* meta.versionId = "1"
* insert PackageMetaProfile(StructureDefinition/GEM_ERP_PR_Binary)
* contentType = #application/pkcs7-mime
* data = "RGllcyBpc3QgZWluIEJlaXNwaWVs"