Instance: erp-abrufen-01-response-taskAccept
InstanceOf: Bundle
Usage: #example
* insert DateTimeStamp(meta.lastUpdated)
* type = #collection
* entry[0].fullUrl = "https://erp.zentral.erp.splitdns.ti-dienste.de/Task/160.000.000.000.000.01"
* entry[=].resource = Inline-Instance-for-dffbfd6a-5712-4798-bdc8-07201eb77ab8-1
* entry[+].fullUrl = "urn:uuid:281a985c-f25b-4aae-91a6-41ad744080b0"
* entry[=].resource = Inline-Instance-for-dffbfd6a-5712-4798-bdc8-07201eb77ab8-2

Instance: Inline-Instance-for-dffbfd6a-5712-4798-bdc8-07201eb77ab8-1
InstanceOf: GEM_ERP_PR_Task
Usage: #inline
* id = "160.000.000.000.000.01"
* insert GKV_Task(in-progress)
* insert TaskSecret
* insert ApoTelematikID(owner.identifier.value)
* insert TaskInputQES(281a985c-f25b-4aae-91a6-41ad744080b0)

Instance: Inline-Instance-for-dffbfd6a-5712-4798-bdc8-07201eb77ab8-2
InstanceOf: GEM_ERP_PR_Binary
Usage: #inline
* data = "RGllcyBpc3QgZWluIEJlaXNwaWVs"