Instance: erp-eml-epa-notes-12-ibm-medication-compounding-Mapped
InstanceOf: EPAMedication
Usage: #example
* contained[0] = FirstIngredient
* contained[+] = SecondIngredient
* extension[drugCategory].valueCoding = $epa-drug-category-cs#00
* extension[type].valueCoding = $sct#1208954007 "Extemporaneous preparation (product)"
* extension[isVaccine].valueBoolean = false
* form.text = "TAB"
* code.text = "Sumatriptan-1a Pharma 100 mg Tabletten"

* amount.numerator = $unitsofmeasure#{tbl} "TAB"
  * extension[totalQuantity].valueString = "12"
* amount.denominator.value = 1

* ingredient[+]
  * itemReference = Reference(FirstIngredient)
  * strength.numerator = 1 '{tbl}' "TAB"
  * strength.denominator.value = 1
  * strength.denominator.system.extension[+].url = $data-absent-reason
  * strength.denominator.system.extension[=].valueCode = #unknown
  * strength.denominator.code.extension[+].url = $data-absent-reason
  * strength.denominator.code.extension[=].valueCode = #unknown

* ingredient[+]
  * itemReference = Reference(SecondIngredient)
  * strength.numerator = 2 '{tbl}' "TAB"
  * strength.denominator
    * value = 1
    * system.extension[+].url = $data-absent-reason
    * system.extension[=].valueCode = #unknown
    * code.extension[+].url = $data-absent-reason
    * code.extension[=].valueCode = #unknown

Instance: FirstIngredient
InstanceOf: EPAMedicationPZNIngredient
Usage: #inline
* extension[type].valueCoding = $sct#781405001 "Medicinal product package (product)"
* code = $pzn-cs#12343219 "1st ingredient"
* code.text = "1st ingredient"

Instance: SecondIngredient
InstanceOf: EPAMedicationPZNIngredient
Usage: #inline
* extension[type].valueCoding = $sct#781405001 "Medicinal product package (product)"
* code = $pzn-cs#56781239 "2nd ingredient"
* code.text = "2nd ingredient"