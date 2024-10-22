Instance: erp-eml-epa-notes-02-Parameters-ExampleInputMultipleDispenses
InstanceOf: GEM_ERP_PR_PAR_DispenseOperation_Input
Usage: #example
* parameter[rxDispensation][+]
  * name = "rxDispensation"
  * part[medicationDispense]
    * name = "medicationDispense"
    * resource = Example-MedicationDispense
  * part[medication]
    * name = "medication"
    * resource = SumatripanMedication
* parameter[rxDispensation][+]
  * name = "rxDispensation"
  * part[medicationDispense]
    * name = "medicationDispense"
    * resource = Example-MedicationDispense-2
  * part[medication]
    * name = "medication"
    * resource = MedicationDexpanthenol


Instance: Example-MedicationDispense-2
InstanceOf: GEM_ERP_PR_MedicationDispense
Usage: #inline
Title: "Example another Medication Dispense"
Description: "Example of another Medication Dispense."
* insert MedicationDispense_PrescriptionID(160)
* insert GKV_Identifier(subject.identifier.value)
* insert ApoTelematikID(performer.actor.identifier.value)
* whenHandedOver = "2024-04-03"
* medicationReference = Reference(MedicationDexpanthenol)