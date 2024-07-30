Instance: 58862
InstanceOf: AuditEvent
Usage: #inline
* meta.versionId = "1"
* meta.lastUpdated = "2020-02-27T08:04:27.434+00:00"
* meta.source = "#IkMt252YovlsJTAE"
* meta.profile = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_PR_AuditEvent|1.3"
* type = $audit-event-type#rest
* subtype = $restful-interaction#create
* action = #C
* recorded = "2020-02-27T08:04:27.434+00:00"
* outcome = #0
* agent.type = $extra-security-role-type#humanuser "Human User"
* agent.who.identifier.system = "https://gematik.de/fhir/sid/telematik-id"
* agent.who.identifier.value = "1-1.54.102323123404"
* agent.name = "Praxis Dr. Müller"
* agent.requestor = false
* source.site = "E-Rezept Fachdienst"
* source.observer = Reference(Device/1234)
* entity.what = Reference(https://erp.app.ti-dienste.de/Task/160.123.456.789.123.58)
* entity.what.identifier.use = #official
* entity.what.identifier.system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* entity.what.identifier.value = "160.123.456.789.123.58"
* entity.name = "X123456789"
* entity.description = "*160.123.456.789.123.58*"