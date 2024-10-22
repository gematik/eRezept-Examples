Instance: erp-eml-epa-notes-01-Parameters-ExampleCloseInputParameters
InstanceOf: GEM_ERP_PR_PAR_CloseOperation_Input
Usage: #example
* parameter[rxDispensation][+]
  * part[medicationDispense]
    * resource = Example-MedicationDispense
  * part[medication]
    * resource = SumatripanMedication

Instance: Example-MedicationDispense
InstanceOf: GEM_ERP_PR_MedicationDispense
Usage: #inline
* insert MedicationDispense_PrescriptionID(160)
* status = #completed
* medicationReference = Reference(SumatripanMedication)
* insert GKV_Identifier(subject.identifier.value)
* insert ApoTelematikID(performer.actor.identifier.value)
* whenHandedOver = "2024-04-03"