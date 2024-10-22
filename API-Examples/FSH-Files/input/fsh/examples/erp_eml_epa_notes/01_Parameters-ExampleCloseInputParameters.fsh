Instance: erp-eml-epa-notes-01-Parameters-ExampleCloseInputParameters
InstanceOf: GEM_ERP_PR_PAR_CloseOperation_Input
Usage: #example
* insert PackageMetaProfile(StructureDefinition/GEM_ERP_PR_PAR_CloseOperation_Input)
* parameter[rxDispensation][+]
  * part[medicationDispense]
    * resource = Example-MedicationDispense
  * part[medication]
    * resource = SumatripanMedication

Instance: Example-MedicationDispense
InstanceOf: GEM_ERP_PR_MedicationDispense
Usage: #inline
* identifier[prescriptionID].value = "160.000.033.491.280.78"
* status = #completed
* medicationReference = Reference(SumatripanMedication)
* subject.identifier.value = "X123456789"
* performer.actor.identifier.value = "3-SMC-B-Testkarte-883110000095957"
* whenHandedOver = "2024-04-03"