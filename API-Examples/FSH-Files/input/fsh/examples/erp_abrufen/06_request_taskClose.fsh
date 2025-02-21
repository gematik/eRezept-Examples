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
* medicationReference = Reference(SumatripanMedication)
* insert GKV_Identifier(subject.identifier)
* insert ApoTelematikID(performer.actor.identifier)
* quantity = 1 '{Package}'
* insert Date(whenHandedOver)
* dosageInstruction.text = "1-0-1-0"