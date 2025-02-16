Instance: erp-steuerung-durch-le-08-response-taskGet169Versicherter
InstanceOf: Bundle
Usage: #example
* meta.lastUpdated = "2020-03-01T07:02:37.836+00:00"
* type = #collection
* link.relation = "self"
* link.url = "https://erp.zentral.erp.splitdns.ti-dienste.de/Task/"
* entry[0].fullUrl = "https://erp.zentral.erp.splitdns.ti-dienste.de/Task/169.000.000.000.000.01"
* entry[=].resource = 08-response-taskGet169Versicherter-01
* entry[+].fullUrl = "https://erp.zentral.erp.splitdns.ti-dienste.de/Task/169.000.000.000.000.02"
* entry[=].resource = 08-response-taskGet169Versicherter-02

Instance: 08-response-taskGet169Versicherter-01
InstanceOf: GEM_ERP_PR_Task
Usage: #inline
// AccessCode may not be included hence the RuleSet is not used
* insert TaskExension(169)
* identifier[PrescriptionID].value = "169.000.000.000.000.01"
* id = "169.000.000.000.000.01"
* insert GKV_Identifier(for.identifier.value)
* insert TaskMiscInfo
* performerType = $GEM_ERP_CS_OrganizationType#urn:oid:1.2.276.0.76.4.54 "Öffentliche Apotheke"
* status = #ready

Instance: 08-response-taskGet169Versicherter-02
InstanceOf: GEM_ERP_PR_Task
Usage: #inline
* id = "169.000.000.000.000.02"
* insert TaskExension(169)
* identifier[PrescriptionID].value = "169.000.000.000.000.02"
* insert GKV_Identifier(for.identifier.value)
* insert TaskMiscInfo
* performerType = $GEM_ERP_CS_OrganizationType#urn:oid:1.2.276.0.76.4.54 "Öffentliche Apotheke"
* status = #ready

Instance: 1bd440bc-bee1-431a-9fb6-dab6041aefcc
InstanceOf: GEM_ERP_PR_Binary
Usage: #inline
* meta.versionId = "1"
* data = "RGllcyBpc3QgZWluIEJlaXNwaWVs"

Instance: 222c9472-8bf3-4123-83fb-0560469df72f
InstanceOf: KBV_PR_ERP_Bundle
Usage: #inline
* insert GKV_VerordnungsDatensatz(169.000.000.000.000.02)

Instance: 20dc17fc-4bde-480b-86ea-b73b14b72da9
InstanceOf: GEM_ERP_PR_Binary
Usage: #inline
* meta.versionId = "1"
* data = "RGllcyBpc3QgZWluIEJlaXNwaWVs"

Instance: a1117192-eb44-48a0-acaa-e9d4ff67a914
InstanceOf: KBV_PR_ERP_Bundle
Usage: #inline
* insert GKV_VerordnungsDatensatz(169.000.000.000.000.03)