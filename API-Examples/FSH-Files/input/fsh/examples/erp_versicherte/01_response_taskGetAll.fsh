Instance: erp-versicherte-01-response-taskGetAll
InstanceOf: Bundle
Usage: #example
* meta.lastUpdated = "2020-03-01T07:02:37.836+00:00"
* type = #collection
* link.relation = "self"
* link.url = "https://erp.app.ti-dienste.de/Task/"
* entry[0].fullUrl = "https://erp.app.ti-dienste.de/Task/160.000.000.000.000.01"
* entry[=].resource = Inline-Instance-for-f5ba6eaf-9052-42f6-ac4e-fadceed7293b-1
* entry[+].fullUrl = "https://erp.app.ti-dienste.de/Task/160.123.456.789.123.78"
* entry[=].resource = 160.123.456.789.123.78
* entry[+].fullUrl = "https://erp.app.ti-dienste.de/Task/160.123.456.789.123.61"
* entry[=].resource = 160.123.456.789.123.61

Instance: Inline-Instance-for-f5ba6eaf-9052-42f6-ac4e-fadceed7293b-1
InstanceOf: Task
Usage: #inline
* id = "160.000.000.000.000.01"
* meta.versionId = "2"
* meta.lastUpdated = "2020-02-18T10:05:05.038+00:00"
* meta.source = "#AsYR9plLkvONJAiv"
* insert PackageMetaProfile(StructureDefinition/GEM_ERP_PR_Task)
* identifier[0].use = #official
* identifier[=].system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* identifier[=].value = "160.000.000.000.000.01"
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

Instance: 160.123.456.789.123.78
InstanceOf: Task
Usage: #inline
* meta.versionId = "2"
* meta.lastUpdated = "2020-02-18T10:06:05.038+00:00"
* meta.source = "#AsYR9plLkvONJAiv"
* insert PackageMetaProfile(StructureDefinition/GEM_ERP_PR_Task)
* identifier[0].use = #official
* identifier[=].system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* identifier[=].value = "160.123.456.789.123.78"
* identifier[+].use = #official
* identifier[=].system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_AccessCode"
* identifier[=].value = "777bea0e13cc9c42ceec14aec3ddee8402643dc2c6c699db115f58fe423607ea"
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

Instance: 160.123.456.789.123.61
InstanceOf: Task
Usage: #inline
* meta.versionId = "2"
* meta.lastUpdated = "2020-02-18T10:05:05.038+00:00"
* meta.source = "#AsYR9plLkvONJAiv"
* insert PackageMetaProfile(StructureDefinition/GEM_ERP_PR_Task)
* identifier[0].use = #official
* identifier[=].system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* identifier[=].value = "160.123.456.789.123.61"
* identifier[+].use = #official
* identifier[=].system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_AccessCode"
* identifier[=].value = "777bea0e13cc9c42ceec14aec3ddee2263325dc2c6c699db115f58fe423607bl"
* intent = #order
* status = #in-progress
* extension[0].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_PrescriptionType"
* extension[=].valueCoding = $GEM_ERP_CS_FlowType#160 "Muster 16 (Apothekenpflichtige Arzneimittel)"
* extension[+].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_ExpiryDate"
* extension[=].valueDate = "2020-06-02"
* extension[+].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_AcceptDate"
* extension[=].valueDate = "2020-04-01"
* extension[+].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_LastMedicationDispense"
* extension[=].valueInstant = "2020-04-01T16:37:17+01:00"
* authoredOn = "2020-03-02T08:25:05+00:00"
* lastModified = "2020-03-02T08:45:05+00:00"
* performerType = $GEM_ERP_CS_OrganizationType#urn:oid:1.2.276.0.76.4.54 "Öffentliche Apotheke"