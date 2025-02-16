Instance: erp-versicherte-07-response-getAuditEvent
InstanceOf: Bundle
Usage: #example
* insert DateTimeStampPlus1hr(meta.lastUpdated)
* type = #searchset
* link[0].relation = "self"
* link[=].url = "https://erp.app.ti-dienste.de/AuditEvent"
* link[+].relation = "next"
* link[=].url = "https://erp.app.ti-dienste.de/AuditEvent?_getpages=12653b13-5fca-4e3b-860c-9558bdfef9a1&_getpagesoffset=20&_count=20"
* entry[0].fullUrl = "https://erp.app.ti-dienste.de/AuditEvent/58862"
* entry[=].resource = 58862
* entry[=].search.mode = #match
* entry[+].fullUrl = "https://erp.app.ti-dienste.de/AuditEvent/58863"
* entry[=].resource = 58863
* entry[=].search.mode = #match
* entry[+].fullUrl = "https://erp.app.ti-dienste.de/AuditEvent/620049"
* entry[=].resource = 620049
* entry[=].search.mode = #match

Instance: 58862
InstanceOf: GEM_ERP_PR_AuditEvent
Usage: #inline
* type = $audit-event-type#rest
* subtype = $restful-interaction#create
* action = #C
* insert DateTimeStamp(recorded)
* outcome = #0
* agent.type = $extra-security-role-type#humanuser "Human User"
* insert ArztTelematikID(agent.who.identifier.value)
* agent.who.identifier.system = "https://gematik.de/fhir/sid/telematik-id"
* agent.name = "Praxis Dr. Müller"
* agent.requestor = false
* source.site = "E-Rezept Fachdienst"
* source.observer = Reference(Device/1234)
* entity.what = Reference(https://erp.app.ti-dienste.de/Task/160.000.000.000.000.01)
* entity.what.identifier.use = #official
* entity.what.identifier.system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* entity.what.identifier.value = "160.000.000.000.000.01"
* insert GKV_Identifier(entity.name)
* entity.description = "*160.000.000.000.000.01*"

Instance: 58863
InstanceOf: GEM_ERP_PR_AuditEvent
Usage: #inline
* meta.versionId = "1"
* insert DateTimeStamp(meta.lastUpdated)
* meta.source = "#IkMt252YovlsJTAE"
* type = $audit-event-type#rest
* subtype = $restful-interaction#read
* action = #R
* insert DateTimeStamp(recorded)
* outcome = #0
* agent.type = $extra-security-role-type#humanuser "Human User"
* insert ApoTelematikID(agent.who.identifier)
* agent.name = "Ihre Apotheke um die Ecke, Hauptstraße 1"
* agent.requestor = false
* source.site = "E-Rezept Fachdienst"
* source.observer = Reference(Device/5678)
* entity.what = Reference(https://erp.app.ti-dienste.de/Task/160.000.000.000.000.01)
* entity.what.identifier.use = #official
* entity.what.identifier.system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* entity.what.identifier.value = "160.000.000.000.000.01"
* insert GKV_Identifier(entity.name)
* entity.description = "*160.000.000.000.000.01*"

Instance: 620049
InstanceOf: GEM_ERP_PR_AuditEvent
Usage: #inline
* meta.versionId = "1"
* insert DateTimeStamp(meta.lastUpdated)
* meta.source = "#IkMt252YovlsJTAE"
* type = $audit-event-type#rest
* subtype = $restful-interaction#update
* action = #U
* insert DateTimeStamp(recorded)
* outcome = #0
* agent.type = $extra-security-role-type#humanuser "Human User"
* insert ApoTelematikID(agent.who.identifier)
* agent.name = "Ihre Apotheke um die Ecke, Hauptstraße 1"
* agent.requestor = false
* source.site = "E-Rezept Fachdienst"
* source.observer = Reference(Device/1234)
* entity.what = Reference(https://erp.app.ti-dienste.de/Task/160.000.000.000.000.01)
* entity.what.identifier.use = #official
* entity.what.identifier.system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* entity.what.identifier.value = "160.000.000.000.000.01"
* insert GKV_Identifier(entity.name)
* entity.description = "*160.000.000.000.000.01*"