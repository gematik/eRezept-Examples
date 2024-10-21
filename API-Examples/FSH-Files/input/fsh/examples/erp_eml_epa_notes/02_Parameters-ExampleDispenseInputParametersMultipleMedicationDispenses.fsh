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
* identifier[prescriptionID].value = "160.000.033.491.280.78"
* subject.identifier.value = "X123456789"
* performer.actor.identifier.value = "3-SMC-B-Testkarte-883110000095957"
* whenHandedOver = "2024-04-03"
* medicationReference = Reference(MedicationDexpanthenol)