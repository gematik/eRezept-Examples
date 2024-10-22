Instance: erp-eml-epa-notes-03-Medication-Medication-Rezeptur
InstanceOf: GEM_ERP_PR_Medication
Usage: #example
* contained[0] = MedicationHydrocortison
* contained[+] = MedicationDexpanthenol
* extension[drugCategory].valueCoding = $epa-drug-category-cs#00
* extension[type].valueCoding = $sct#1208954007 "Extemporaneous preparation (product)"
* extension[isVaccine].valueBoolean = false
* code.text = "Hydrocortison-Dexpanthenol-Salbe"
* form = $KBV_CS_SFHIR_KBV_DARREICHUNGSFORM#SAL
* amount.numerator
  * extension[totalQuantity].valueString = "100 ml"
  * value = 100
  * unit = "ml"
* amount.denominator.value = 1
* ingredient[+]
  * itemReference = Reference(MedicationHydrocortison)
  * isActive = true
  * strength.numerator = 50 'ml'
  * strength.denominator = 100 'ml'
* ingredient[+]
  * itemReference = Reference(MedicationDexpanthenol)
  * isActive = true
  * strength.numerator = 50 'ml'
  * strength.denominator = 100 'ml'

Instance: MedicationHydrocortison
InstanceOf: EPAMedicationPZNIngredient
Usage: #inline
* extension[type].valueCoding = $sct#781405001 "Medicinal product package (product)"
* code = $pzn-cs#03424249 "Hydrocortison 1% Creme"
* batch.lotNumber = "56498416854"

Instance: MedicationDexpanthenol
InstanceOf: EPAMedicationPZNIngredient
Usage: #inline
* extension[type].valueCoding = $sct#781405001 "Medicinal product package (product)"
* code = $pzn-cs#16667195 "Dexpanthenol 5% Creme"
* batch.lotNumber = "0132456"