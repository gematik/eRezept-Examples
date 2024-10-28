Instance: erp-abrufen-06-request-taskClose
InstanceOf: GEM_ERP_PR_PAR_CloseOperation_Input
Usage: #example
* parameter[rxDispensation]
  * part[medicationDispense]
    * resource = erp-abrufen-06-request-taskClose-medicationDispense
  * part[medication]
    * resource = SumatripanMedication


Instance: erp-abrufen-06-request-taskClose-medicationDispense
InstanceOf: GEM_ERP_PR_MedicationDispense
Usage: #inline
* identifier[prescriptionID].value = "160.000.000.000.000.01"
* medicationReference = Reference(SumatripanMedication) "Sumatriptan-1a Pharma 100 mg Tabletten"
* insert GKV_Identifier(subject.identifier.value)
* performer.actor.identifier.value = "3-SMC-B-Testkarte-883110000129070"
* quantity = 1 '{Package}'
* insert Date(whenHandedOver)
* dosageInstruction.text = "1-0-1-0"