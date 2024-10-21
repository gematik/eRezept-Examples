Instance: erp-versicherte-02-response-taskGetSingle
InstanceOf: Bundle
Usage: #example
* meta.lastUpdated = "2020-03-01T07:02:37.836+00:00"
* type = #collection
* link.relation = "self"
* link.url = "https://erp.app.ti-dienste.de/Task/160.123.456.789.123.58"
* entry[0].fullUrl = "https://erp.app.ti-dienste.de/Task/160.123.456.789.123.58"
* entry[=].resource = 160.123.456.789.123.58-2
* entry[0].fullUrl = "https://erp.app.ti-dienste.de/Bundle/414ca393-dde3-4082-9a3b-3752e629e4aa"
* entry[+].resource = 414ca393-dde3-4082-9a3b-3752e629e4aa

Instance: 160.123.456.789.123.58-2
InstanceOf: Task
Usage: #inline
* meta.versionId = "2"
* meta.lastUpdated = "2020-02-18T10:05:05.038+00:00"
* meta.source = "#AsYR9plLkvONJAiv"
* insert PackageMetaProfile(StructureDefinition/GEM_ERP_PR_Task)
* identifier[0].use = #official
* identifier[=].system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* identifier[=].value = "160.123.456.789.123.58"
* identifier[+].use = #official
* identifier[=].system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_AccessCode"
* identifier[=].value = "777bea0e13cc9c42ceec14aec3ddee2263325dc2c6c699db115f58fe423607ea"
* intent = #order
* status = #ready
* extension[0].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_PrescriptionType"
* extension[=].valueCoding = $GEM_ERP_CS_FlowType#160 "Muster 16 (Apothekenpflichtige Arzneimittel)"
* extension[+].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_ExpiryDate"
* extension[=].valueDate = "2020-06-02"
* extension[+].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_AcceptDate"
* extension[=].valueDate = "2020-04-01"
* authoredOn = "2020-03-02T08:25:05+00:00"
* lastModified = "2020-03-02T08:45:05+00:00"
* performerType = $GEM_ERP_CS_OrganizationType#urn:oid:1.2.276.0.76.4.54 "Öffentliche Apotheke"
* input.type = $GEM_ERP_CS_DocumentType#2
* input.valueReference = Reference(urn:uuid:f8c2298f-7c00-4a68-af29-8a2862d55d43)

//TODO: Replace with correct example
Instance: 414ca393-dde3-4082-9a3b-3752e629e4aa
InstanceOf: Bundle
Usage: #inline
* meta.lastUpdated = "2022-05-20T08:30:00Z"
* meta.profile = "https://fhir.kbv.de/StructureDefinition/KBV_PR_ERP_Bundle|1.1.0"
* meta.tag.display = "Dies ist ein unvollständiges Beispiel. Für die vollständige Darstellung bitte die entsprechenden Profile beachten."
* identifier.system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* identifier.value = "200.086.824.605.539.20"
* signature.type.system = "urn:iso-astm:E1762-95:2013"
* signature.type.code = #1.2.840.10065.1.12.1.1
* signature.when = "2020-03-20T07:31:34.328+00:00"
* signature.who = Reference(urn:uuid:b6fcc694-994f-40fa-968e-77a477bcc0b8)
* signature.data = "RGllcyBpc3QgZWluIEJlaXNwaWVs"
* timestamp = "2023-07-04T08:30:00Z"
* type = #document