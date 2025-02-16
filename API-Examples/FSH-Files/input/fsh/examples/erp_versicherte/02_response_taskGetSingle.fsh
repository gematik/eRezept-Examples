Instance: erp-versicherte-02-response-taskGetSingle
InstanceOf: Bundle
Usage: #example
* insert DateTimeStamp(meta.lastUpdated)
* type = #collection
* link.relation = "self"
* link.url = "https://erp.app.ti-dienste.de/Task/160.000.000.000.000.01"
* entry[+].fullUrl = "https://erp.app.ti-dienste.de/Task/160.000.000.000.000.01"
* entry[=].resource = 160.000.000.000.000.01-2
* entry[+].fullUrl = "urn:uuid:414ca393-dde3-4082-9a3b-3752e629e4aa"
* entry[=].resource = 414ca393-dde3-4082-9a3b-3752e629e4aa

Instance: 160.000.000.000.000.01-2
InstanceOf: GEM_ERP_PR_Task
Usage: #inline
* id = "160.000.000.000.000.01"
* insert GKV_Task(ready)
* insert TaskIdentifierAccessCode
* insert TaskInputReceipt(414ca393-dde3-4082-9a3b-3752e629e4aa)
// TODO: Bug im E-Rezept-Fachdienst
* input[patientReceipt].type = $GEM_ERP_CS_DocumentType#2
* input[patientReceipt].valueReference.reference = "414ca393-dde3-4082-9a3b-3752e629e4aa"

Instance: 414ca393-dde3-4082-9a3b-3752e629e4aa
InstanceOf: KBV_PR_ERP_Bundle
Usage: #inline
* insert GKV_VerordnungsDatensatz(160.000.000.000.000.01)