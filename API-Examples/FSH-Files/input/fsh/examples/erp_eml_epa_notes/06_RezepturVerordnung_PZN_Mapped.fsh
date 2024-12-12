Instance: erp-eml-epa-notes-06-RezepturVerordnung-PZN-Mapped
InstanceOf: GEM_ERP_PR_Medication
Usage: #example
* contained[0] = MedicationPropanol
* contained[+] = MedicationSalicylsaeure
* extension[drugCategory].valueCoding = $epa-drug-category-cs#00
* extension[type].valueCoding = $sct#1208954007 "Extemporaneous preparation (product)"
* extension[isVaccine].valueBoolean = false
* form.text = "Lösung"
* amount.numerator
  * extension[totalQuantity].valueString = "100"
  * unit = "ml"
* amount.denominator.value = 1
* ingredient[+]
  * itemReference = Reference(MedicationSalicylsaeure)
  * strength.numerator = 5 'g'
  * strength.denominator.value = 1
  * strength.denominator.system.extension[dataAbsentReason].valueCode = #unknown
  * strength.denominator.code.extension[dataAbsentReason].valueCode = #unknown
* ingredient[+]
  * itemReference = Reference(MedicationPropanol)
  * strength.extension[amountText].valueString = "Ad 100 g"
  * strength.numerator
    * value.extension[+].url = $data-absent-reason
    * value.extension[=].valueCode = #unknown
    * system.extension[dataAbsentReason].valueCode = #unknown
    * code.extension[dataAbsentReason].valueCode = #unknown

Instance: MedicationSalicylsaeure
InstanceOf: EPAMedicationPZNIngredient
Usage: #inline
* extension[type].valueCoding = $sct#781405001 "Medicinal product package (product)"
* code = $pzn-cs#123456789 "Salicylsäure"
* code.text = "Salicylsäure"

Instance: MedicationPropanol
InstanceOf: EPAMedicationPZNIngredient
Usage: #inline
* extension[type].valueCoding = $sct#781405001 "Medicinal product package (product)"
* code = $pzn-cs#987654321 "2-propanol 70 %"
* code.text = "2-propanol 70 %"