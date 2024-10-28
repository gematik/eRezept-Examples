Instance: erp-versicherte-05-response-get-single-medicationdispense-by-id
InstanceOf: Bundle
Usage: #example
* type = #searchset
* insert DateTimeStamp(timestamp)
* total = 0
* link.relation = "self"
* link.url = "https://erp-ref.zentral.erp.splitdns.ti-dienste.de/MedicationDispense?identifier=200.000.000.000.000.01"
* entry[0].fullUrl = "https://erp-ref.zentral.erp.splitdns.ti-dienste.de/MedicationDispense/200.000.000.000.000.01"
* entry[=].resource = 05-response-get-single-medicationdispense-by-id-1
* entry[=].search.mode = #match
* entry[+].fullUrl = "https://erp-ref.zentral.erp.splitdns.ti-dienste.de/Medication/a6635059-bb82-4cdc-90dc-907bc83be523"
* entry[=].resource = a6635059-bb82-4cdc-90dc-907bc83be523
* entry[=].search.mode = #include

Instance: 05-response-get-single-medicationdispense-by-id-1
InstanceOf: GEM_ERP_PR_MedicationDispense
Usage: #inline
* status = #completed
* id = "200.000.000.000.000.01"
* identifier[prescriptionID].value = "200.000.000.000.000.01"
* insert GKV_Identifier(subject.identifier.value)
* insert ApoTelematikID(performer.actor.identifier)
* dosageInstruction.text = "1-0-1-0"
* insert Date(whenHandedOver)
* quantity = 1 '{Package}'
* medicationReference = Reference(a6635059-bb82-4cdc-90dc-907bc83be523)

Instance: a6635059-bb82-4cdc-90dc-907bc83be523
InstanceOf: GEM_ERP_PR_Medication
Usage: #inline
* insert SumatripanMedication