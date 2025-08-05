Instance: erp-abrufen-10-response-taskGet
InstanceOf: Bundle
Usage: #example
* insert DateTimeStamp(timestamp)
* type = #collection
* link[+]
  * relation = "self"
  * url = "https://erp-ref.zentral.erp.splitdns.ti-dienste.de/Task/160.000.000.000.000.01"
* entry[0].fullUrl = "https://erp.zentral.erp.splitdns.ti-dienste.de/Task/160.000.000.000.000.01-1"
* entry[=].resource = 160.000.000.000.000.01-1
* entry[+].fullUrl = "urn:uuid:a562d322-8b4f-449c-a88f-57ed2a8b96f7"
* entry[=].resource = a562d322-8b4f-449c-a88f-57ed2a8b96f7

Instance: 160.000.000.000.000.01-1
InstanceOf: GEM_ERP_PR_Task
Usage: #inline
* insert GKV_Task(completed)
* insert TaskSecret
* insert ApoTelematikID(owner.identifier)
* input[patientReceipt].type = $GEM_ERP_CS_DocumentType#2
* input[patientReceipt].valueReference.reference = "a562d322-8b4f-449c-a88f-57ed2a8b96f7" //TODO: Fix FD
* insert DateTimeStampPlus1hr(extension[lastMedicationDispense].valueInstant)

Instance: a562d322-8b4f-449c-a88f-57ed2a8b96f7
InstanceOf: GEM_ERP_PR_Bundle
Usage: #inline
* insert GEM_ERP_PR_Bundle