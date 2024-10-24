Instance: authentisieren-07-response-InnerVau
InstanceOf: Bundle
Usage: #example
* meta.lastUpdated = "2020-03-01T07:02:37.836+00:00"
* type = #searchset
* total = 2
* link.relation = "self"
* link.url = "https://erp.zentral.erp.splitdns.ti-dienste.de/Task/"
* entry.fullUrl = "https://erp.zentral.erp.splitdns.ti-dienste.de/Task/Example-Task"
* entry.resource = Example-Task
* entry.search.mode = #match

Instance: Example-Task
InstanceOf: GEM_ERP_PR_Task
Usage: #inline
* insert GKV_Task(in-progress)
* insert TaskIdentifierAccessCode
* insert TaskInputQES(281a985c-f25b-4aae-91a6-41ad744080b0)