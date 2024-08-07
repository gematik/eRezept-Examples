Instance: erp-diga-01-task-162-create
InstanceOf: Task
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2025-03-02T08:26:21.594+00:00"
* meta.profile = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_PR_Task|{{profileVersion}}"
* extension.url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_PrescriptionType"
* extension.valueCodeableConcept = $GEM_ERP_CS_FlowType#162 "Muster 16 (Digitale Gesundheitsanwendungen)"
* identifier[0].use = #official
* identifier[=].system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* identifier[=].value = "162.123.456.789.123.58"
* identifier[+].use = #official
* identifier[=].system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_AccessCode"
* identifier[=].value = "777bea0e13cc9c42ceec14aec3ddee2263325dc2c6c699db115f58fe423607ea"
* status = #draft
* intent = #order
* authoredOn = "2025-03-02T08:25:05+00:00"
* lastModified = "2025-03-02T08:25:05+00:00"
* performerType = urn:ietf:rfc:3986#urn:oid:1.2.276.0.76.4.59 "Kostenträger"
* performerType.text = "Kostenträger"