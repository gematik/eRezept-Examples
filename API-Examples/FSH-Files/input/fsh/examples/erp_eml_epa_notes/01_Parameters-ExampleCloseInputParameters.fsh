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

Instance: SumatripanMedication
InstanceOf: GEM_ERP_PR_Medication
Usage: #inline
* extension[drugCategory].valueCoding.code = #00
* extension[isVaccine].valueBoolean = false
* extension[normSizeCode].valueCode = #N1
* code.coding = $pzn-cs#06313728
* code.text = "Sumatriptan-1a Pharma 100 mg Tabletten"
* form.coding.system = "https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_KBV_DARREICHUNGSFORM"
* form.coding.code = #TAB
* amount.numerator
  * extension[totalQuantity].valueString = "20 St."
  * value = 20
  * unit = "St"
* amount.denominator.value = 1