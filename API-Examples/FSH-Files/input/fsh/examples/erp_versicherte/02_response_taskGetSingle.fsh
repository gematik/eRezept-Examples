Instance: erp-versicherte-02-response-taskGetSingle
InstanceOf: Bundle
Usage: #example
* meta.lastUpdated = "2020-03-01T07:02:37.836+00:00"
* type = #collection
* link.relation = "self"
* link.url = "https://erp.app.ti-dienste.de/Task/160.000.000.000.000.01"
* entry[+].fullUrl = "https://erp.app.ti-dienste.de/Task/160.000.000.000.000.01"
* entry[=].resource = 160.000.000.000.000.01-2
* entry[+].fullUrl = "https://erp.app.ti-dienste.de/Bundle/414ca393-dde3-4082-9a3b-3752e629e4aa"
* entry[=].resource = 414ca393-dde3-4082-9a3b-3752e629e4aa

Instance: 160.000.000.000.000.01-2
InstanceOf: GEM_ERP_PR_Task
Usage: #inline
* id = "160.000.000.000.000.01"
* insert GKV_Task(ready)
* insert TaskInputReceipt(414ca393-dde3-4082-9a3b-3752e629e4aa)

Instance: 414ca393-dde3-4082-9a3b-3752e629e4aa
InstanceOf: KBV_PR_ERP_Bundle
Usage: #inline
* insert GKV_VerordnungsDatensatz(160.000.000.000.000.01)