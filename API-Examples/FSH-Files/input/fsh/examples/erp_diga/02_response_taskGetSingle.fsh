Instance: erp-diga-02-response-taskGetSingle
InstanceOf: Bundle
Usage: #example
* insert DateTimeStamp(meta.lastUpdated)
* type = #collection
* link.relation = "self"
* link.url = "https://erp.app.ti-dienste.de/Task/162.000.000.000.000.01"
* entry[+].fullUrl = "https://erp.app.ti-dienste.de/Task/162.000.000.000.000.01"
* entry[=].resource = 162.000.000.000.000.01-2
* entry[+].fullUrl = "urn:uuid:3ebd56b4-5cdf-42bc-b26a-738d0b08068a"
* entry[=].resource = 3ebd56b4-5cdf-42bc-b26a-738d0b08068a

Instance: 162.000.000.000.000.01-2
InstanceOf: GEM_ERP_PR_Task
Usage: #inline
* id = "162.000.000.000.000.01"
* insert DiGA_Task(ready)
* insert TaskIdentifierAccessCode
* insert TaskInputReceipt(3ebd56b4-5cdf-42bc-b26a-738d0b08068a)
// TODO: Bug im E-Rezept-Fachdienst
* input[patientReceipt].type = $GEM_ERP_CS_DocumentType#2
* input[patientReceipt].valueReference.reference = "3ebd56b4-5cdf-42bc-b26a-738d0b08068a"

Instance: 3ebd56b4-5cdf-42bc-b26a-738d0b08068a
InstanceOf: KBV_PR_EVDGA_Bundle
Usage: #inline
* insert RS_DiGA_VerordnungsDatensatz(162.000.000.000.000.01)