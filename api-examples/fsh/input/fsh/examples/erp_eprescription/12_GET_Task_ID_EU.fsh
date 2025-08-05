Instance: erp-eprescription-12-GET-Task-ID-Bundle
InstanceOf: Bundle
Title: "Example for a Bundle with a Consent"
Usage: #example
* type = #searchset
* insert DateTimeStamp(timestamp)
* total = 1
* entry.fullUrl = "https://erp-dev.zentral.erp.splitdns.ti-dienste.de/Task/3ceaecda-af6e-432b-a7f6-09b2eb1302a0"
* entry.resource = 160.000.000.000.000.01-3

Instance: 160.000.000.000.000.01-3
InstanceOf: GEM_ERP_PR_Task
Usage: #inline
* id = "160.000.000.000.000.01"
* insert GKV_Task(ready)
* insert Task-FD-EU-Extension(true)
* insert Task-Patient-EU-Extension(true)
* insert TaskIdentifierAccessCode
* insert TaskInputReceipt(414ca393-dde3-4082-9a3b-3752e629e4aa)
// TODO: Bug im E-Rezept-Fachdienst
* input[patientReceipt].type = $GEM_ERP_CS_DocumentType#2
* input[patientReceipt].valueReference.reference = "414ca393-dde3-4082-9a3b-3752e629e4aa"
