Instance: erp-versicherte-06-response-get-multiple-medication-dispense
InstanceOf: Bundle
Usage: #example
* type = #searchset
* insert DateTimeStamp(timestamp)
* total = 2
* entry[0].fullUrl = "https://erp-ref.zentral.erp.splitdns.ti-dienste.de/MedicationDispense/200.000.000.000.000.01-1"
* entry[=].resource = 06-response-get-multiple-medication-dispense-1
* entry[=].search.mode = #match
* entry[+].fullUrl = "https://erp-ref.zentral.erp.splitdns.ti-dienste.de/Medication/e25e68d2-8aa4-4fb4-8498-68d9856f8ec3"
* entry[=].resource = e25e68d2-8aa4-4fb4-8498-68d9856f8ec3
* entry[=].search.mode = #include
* entry[+].fullUrl = "https://erp-ref.zentral.erp.splitdns.ti-dienste.de/MedicationDispense/200.000.000.000.000.02"
* entry[=].resource = 06-response-get-multiple-medication-dispense-2
* entry[=].search.mode = #match
* entry[+].fullUrl = "https://erp-ref.zentral.erp.splitdns.ti-dienste.de/Medication/32c2f072-38ba-4990-9d74-80938ccb05b6"
* entry[=].resource = 32c2f072-38ba-4990-9d74-80938ccb05b6
* entry[=].search.mode = #include
* link.relation = "self"
* link.url = "https://erp-ref.zentral.erp.splitdns.ti-dienste.de/MedicationDispense?identifier=200.000.000.000.000.01"

Instance: 06-response-get-multiple-medication-dispense-1
InstanceOf: GEM_ERP_PR_MedicationDispense
Usage: #inline
* status = #completed
* id = "200.000.000.000.000.01-1"
* identifier[prescriptionID].value = "200.000.000.000.000.01"
* insert GKV_Identifier(subject.identifier.value)
* insert ApoTelematikID(performer.actor.identifier)
* dosageInstruction.text = "1-0-1-0"
* insert Date(whenHandedOver)
* quantity = 1 '{Package}'
* medicationReference = Reference(e25e68d2-8aa4-4fb4-8498-68d9856f8ec3)

Instance: e25e68d2-8aa4-4fb4-8498-68d9856f8ec3
InstanceOf: GEM_ERP_PR_Medication
Usage: #inline
* insert SumatripanMedication

Instance: 06-response-get-multiple-medication-dispense-2
InstanceOf: GEM_ERP_PR_MedicationDispense
Usage: #inline
* status = #completed
* id = "200.000.000.000.000.02"
* identifier[prescriptionID].value = "200.000.000.000.000.02"
* insert GKV_Identifier(subject.identifier.value)
* insert ApoTelematikID(performer.actor.identifier)
* dosageInstruction.text = "1-0-1-0"
* insert Date(whenHandedOver)
* quantity = 1 '{Package}'
* medicationReference = Reference(32c2f072-38ba-4990-9d74-80938ccb05b6)

Instance: 32c2f072-38ba-4990-9d74-80938ccb05b6
InstanceOf: GEM_ERP_PR_Medication
Usage: #inline
* insert FlusarionMedication
