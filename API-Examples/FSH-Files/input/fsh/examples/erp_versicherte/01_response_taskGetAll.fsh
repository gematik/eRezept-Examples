Instance: erp-versicherte-01-response-taskGetAll
InstanceOf: Bundle
Usage: #example
* meta.lastUpdated = "2020-03-01T07:02:37.836+00:00"
* type = #collection
* link.relation = "self"
* link.url = "https://erp.app.ti-dienste.de/Task/"
* entry[0].fullUrl = "https://erp.app.ti-dienste.de/Task/160.000.000.000.000.01"
* entry[=].resource = 01-response-taskGetAll-1
* entry[+].fullUrl = "https://erp.app.ti-dienste.de/Task/160.000.000.000.000.02"
* entry[=].resource = 01-response-taskGetAll-2
* entry[+].fullUrl = "https://erp.app.ti-dienste.de/Task/160.000.000.000.000.03"
* entry[=].resource = 01-response-taskGetAll-3

Instance: 01-response-taskGetAll-1
InstanceOf: GEM_ERP_PR_Task
Usage: #inline
* id = "160.000.000.000.000.01"
* insert GKV_Task(ready)
* insert TaskIdentifierAccessCode

Instance: 01-response-taskGetAll-2
InstanceOf: GEM_ERP_PR_Task
Usage: #inline
* insert GKV_Task(ready)
* insert TaskIdentifierAccessCode
* id = "160.000.000.000.000.02"
* identifier[PrescriptionID].value = "160.000.000.000.000.02"

Instance: 01-response-taskGetAll-3
InstanceOf: GEM_ERP_PR_Task
Usage: #inline
* insert GKV_Task(ready)
* insert TaskIdentifierAccessCode
* id = "160.000.000.000.000.03"
* identifier[PrescriptionID].value = "160.000.000.000.000.03"