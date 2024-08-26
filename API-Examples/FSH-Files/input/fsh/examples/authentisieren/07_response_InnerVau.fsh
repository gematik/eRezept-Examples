Instance: authentisieren-07-response-InnverVau
InstanceOf: Bundle
Usage: #example
* meta.lastUpdated = "2020-03-01T07:02:37.836+00:00"
* type = #searchset
* total = 2
* link.relation = "self"
* link.url = "https://erp.zentral.erp.splitdns.ti-dienste.de/Task/"
* entry.fullUrl = "https://erp.zentral.erp.splitdns.ti-dienste.de/Task/160.123.456.789.123.58"
* entry.resource = 160.123.456.789.123.58
* entry.search.mode = #match

Instance: 160.123.456.789.123.58
InstanceOf: Task
Usage: #inline
* insert PackageMetaProfile(StructureDefinition/GEM_ERP_PR_Task)
* extension[0].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_PrescriptionType"
* extension[=].valueCoding = $GEM_ERP_CS_FlowType#160 "Muster 16 (Apothekenpflichtige Arzneimittel)"
* extension[+].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_AcceptDate"
* extension[=].valueDate = "2020-03-02"
* extension[+].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_ExpiryDate"
* extension[=].valueDate = "2020-05-02"
* identifier[0].system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* identifier[=].value = "160.123.456.789.123.58"
* identifier[+].system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_AccessCode"
* identifier[=].value = "777bea0e13cc9c42ceec14aec3ddee2263325dc2c6c699db115f58fe423607ea"
* identifier[+].system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_Secret"
* identifier[=].value = "c36ca26502892b371d252c99b496e31505ff449aca9bc69e231c58148f6233cf"
* status = #in-progress
* intent = #order
* for.identifier.system = "http://fhir.de/sid/gkv/kvid-10"
* for.identifier.value = "X123456789"
* authoredOn = "2020-03-02T08:25:05+00:00"
* lastModified = "2020-03-02T08:45:05+00:00"
* performerType = $GEM_ERP_CS_OrganizationType#urn:oid:1.2.276.0.76.4.54 "Öffentliche Apotheke"
* input.type = $GEM_ERP_CS_DocumentType#1 "Health Care Provider Prescription"
* input.valueReference = Reference(Bundle/KbvPrescriptionExample)