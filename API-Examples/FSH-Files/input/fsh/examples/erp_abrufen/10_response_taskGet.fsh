Instance: erp-abrufen-10-response-taskGet
InstanceOf: Bundle
Usage: #example
* insert DateTimeStamp(meta.lastUpdated)
* type = #collection
* entry[0].fullUrl = "https://erp.zentral.erp.splitdns.ti-dienste.de/Task/160.000.000.000.000.01-1"
* entry[=].resource = 160.000.000.000.000.01-1
* entry[+].fullUrl = "urn:uuid:a562d322-8b4f-449c-a88f-57ed2a8b96f7"
* entry[=].resource = a562d322-8b4f-449c-a88f-57ed2a8b96f7

Instance: 160.000.000.000.000.01-1
InstanceOf: GEM_ERP_PR_Task
Usage: #inline
* insert GKV_Task(completed)
* insert TaskSecret
* insert TaskInputQES(281a985c-f25b-4aae-91a6-41ad744080b0)
* insert TaskOutputReceipt(a562d322-8b4f-449c-a88f-57ed2a8b96f7)

Instance: a562d322-8b4f-449c-a88f-57ed2a8b96f7
InstanceOf: GEM_ERP_PR_Bundle
Usage: #inline
* insert GEM_ERP_PR_Bundle