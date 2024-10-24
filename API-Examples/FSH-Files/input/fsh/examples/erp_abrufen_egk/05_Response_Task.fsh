Instance: erp-abrufen-egk-05-Response-Task
InstanceOf: Bundle
Usage: #example
* type = #searchset
* insert DateTimeStamp(timestamp)
* total = 2
* entry[0].fullUrl = "https://erp-dev.zentral.erp.splitdns.ti-dienste.de/Task/160.000.000.000.000.01"
* entry[=].resource = 05-Response-Task-160.000.000.000.000.01
* entry[=].search.mode = #match
* entry[+].fullUrl = "https://erp-dev.zentral.erp.splitdns.ti-dienste.de/Task/160.000.000.000.000.02"
* entry[=].resource = 05-Response-Task-160.000.000.000.000.02
* entry[=].search.mode = #match

Instance: 05-Response-Task-160.000.000.000.000.01
InstanceOf: GEM_ERP_PR_Task
Usage: #inline
* id = "160.000.000.000.000.01"
* insert GKV_Task(ready)
* insert TaskIdentifierAccessCode
* status = #ready
* identifier[PrescriptionID].value = "160.000.000.000.000.01"

Instance: 05-Response-Task-160.000.000.000.000.02
InstanceOf: GEM_ERP_PR_Task
Usage: #inline
* id = "160.000.000.000.000.02"
* insert GKV_Task(ready)
* insert TaskIdentifierAccessCode
* status = #ready
* identifier[PrescriptionID].value = "160.000.000.000.000.02"