Instance: erp-abrufen-10-response-taskGet
InstanceOf: Bundle
Usage: #example
* meta.lastUpdated = "2020-03-13T07:31:34.328+00:00"
* type = #collection
* entry[0].fullUrl = "https://erp.zentral.erp.splitdns.ti-dienste.de/Task/160.000.000.000.000.01-1"
* entry[=].resource = 160.000.000.000.000.01-1
* entry[+].fullUrl = "urn:uuid:dffbfd6a-5712-4798-bdc8-07201eb77ab8"
* entry[=].resource = erp-abrufen-09-response-taskClose

Instance: 160.000.000.000.000.01-1
InstanceOf: GEM_ERP_PR_Task
Usage: #inline
* insert GKV_Task(completed)
* insert TaskInputQES(281a985c-f25b-4aae-91a6-41ad744080b0)