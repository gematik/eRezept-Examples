Instance: Inline-Instance-for-d5e04846-e753-4a91-ab60-9e4c6fb4b533-1
InstanceOf: Task
Usage: #inline
* id = "162.123.456.789.123.58"
* meta.versionId = "1"
* meta.lastUpdated = "2025-03-03T08:26:21.594+00:00"
* meta.profile = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_PR_Task|1.4"
* extension[0].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_PrescriptionType"
* extension[=].valueCodeableConcept = $GEM_ERP_CS_FlowType#162 "Muster 16 (Digitale Gesundheitsanwendungen)"
* extension[+].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_ExpiryDate"
* extension[=].valueDateTime = "2025-06-02"
* extension[+].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_AcceptDate"
* extension[=].valueDateTime = "2025-06-02"
* identifier[0].use = #official
* identifier[=].system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* identifier[=].value = "162.123.456.789.123.58"
* identifier[+].use = #official
* identifier[=].system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_AccessCode"
* identifier[=].value = "777bea0e13cc9c42ceec14aec3ddee2263325dc2c6c699db115f58fe423607ea"
* identifier[+].use = #official
* identifier[=].system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_Secret"
* identifier[=].value = "90bcf075768d582571ede9f241a8365bf8d12a19c6e353940ae070cb34f5fb7c"
* status = #draft
* intent = #order
* for.identifier.system = "http://fhir.de/sid/gkv/kvid-10"
* for.identifier.value = "X123456789"
* authoredOn = "2025-03-02T08:25:05+00:00"
* lastModified = "2025-03-02T08:25:05+00:00"
* performerType = urn:ietf:rfc:3986#urn:oid:1.2.276.0.76.4.59 "Kostenträger"
* performerType.text = "Kostenträger"
* owner.identifier.system = "https://gematik.de/fhir/sid/telematik-id"
* owner.identifier.value = "8-SMC-B-Testkarte-883110000116873"
* input.type = $GEM_ERP_CS_DocumentType#1
* input.valueReference = Reference(a061507a-0d00-0000-0001-000000000000)