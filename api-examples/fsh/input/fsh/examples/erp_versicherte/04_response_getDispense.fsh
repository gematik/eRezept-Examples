Instance: erp-versicherte-04-response-getDispense
InstanceOf: Bundle
Usage: #example
* insert DateTimeStamp(meta.lastUpdated)
* type = #searchset
* total = 1
* link.relation = "self"
* link.url = "https://erp.app.ti-dienste.de/MedicationDispense?whenhandedover=gt2020-01-01"
* entry[+].fullUrl = "https://erp.app.ti-dienste.de/MedicationDispense/160.000.000.000.000.01"
* entry[=].resource = 04-response-getDispense-1
* entry[=].search.mode = #match
* entry[+].fullUrl = "https://erp.app.ti-dienste.de/Medication/d51b39ab-dad0-4a14-8072-ed87534af585"
* entry[=].resource = d51b39ab-dad0-4a14-8072-ed87534af585
* entry[=].search.mode = #include

Instance: 04-response-getDispense-1
InstanceOf: GEM_ERP_PR_MedicationDispense
Usage: #inline
* status = #completed
* id = "160.000.000.000.000.01"
* identifier[prescriptionID].value = "160.000.000.000.000.01"
* insert GKV_Identifier(subject.identifier)
* insert ApoTelematikID(performer.actor.identifier)
* dosageInstruction.text = "1-0-1-0"
* insert Date(whenHandedOver)
* quantity = 1 '{Package}'
* medicationReference = Reference(d51b39ab-dad0-4a14-8072-ed87534af585)

Instance: d51b39ab-dad0-4a14-8072-ed87534af585
InstanceOf: GEM_ERP_PR_Medication
Usage: #inline
* insert SumatripanMedication