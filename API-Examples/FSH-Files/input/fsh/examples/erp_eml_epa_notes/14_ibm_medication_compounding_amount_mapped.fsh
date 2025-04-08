Instance: erp-eml-epa-notes-14-ibm-medication-compounding-amount-Mapped
InstanceOf: EPAMedication
Usage: #example
* contained[0] = FirstIngredientAmount
* contained[+] = SecondIngredientAmount
* extension[drugCategory].valueCoding = $epa-drug-category-cs#00
* extension[type].valueCoding = $sct#1208954007 "Extemporaneous preparation (product)"
* extension[isVaccine].valueBoolean = false
* form.text = "TAB"
* code.text = "Sumatriptan-1a Pharma 100 mg Tabletten"

* amount.numerator.unit = "TAB"
* amount.numerator.extension[totalQuantity].valueString = "12"
* amount.denominator.value = 1

* ingredient[+]
  * itemReference = Reference(FirstIngredientAmount)
  * strength
    * extension[amountText].valueString = "100 mg"
  * strength.numerator
    * value.extension[+].url = $data-absent-reason
    * value.extension[=].valueCode = #unknown
    * system.extension[+].url = $data-absent-reason
    * system.extension[=].valueCode = #unknown
    * code.extension[+].url = $data-absent-reason
    * code.extension[=].valueCode = #unknown
  * strength.denominator
    * value.extension[+].url = $data-absent-reason
    * value.extension[=].valueCode = #unknown
    * system.extension[+].url = $data-absent-reason
    * system.extension[=].valueCode = #unknown
    * code.extension[+].url = $data-absent-reason
    * code.extension[=].valueCode = #unknown

* ingredient[+]
  * itemReference = Reference(SecondIngredientAmount)
  * strength
    * extension[amountText].valueString = "10 g"
  * strength.numerator
    * value.extension[+].url = $data-absent-reason
    * value.extension[=].valueCode = #unknown
    * system.extension[+].url = $data-absent-reason
    * system.extension[=].valueCode = #unknown
    * code.extension[+].url = $data-absent-reason
    * code.extension[=].valueCode = #unknown
  * strength.denominator
    * value.extension[+].url = $data-absent-reason
    * value.extension[=].valueCode = #unknown
    * system.extension[+].url = $data-absent-reason
    * system.extension[=].valueCode = #unknown
    * code.extension[+].url = $data-absent-reason
    * code.extension[=].valueCode = #unknown


Instance: FirstIngredientAmount
InstanceOf: EPAMedicationPZNIngredient
Usage: #inline
* extension[type].valueCoding = $sct#781405001 "Medicinal product package (product)"
* code = $pzn-cs#12343219 "1st ingredient"
* code.text = "1st ingredient"

Instance: SecondIngredientAmount
InstanceOf: EPAMedicationPZNIngredient
Usage: #inline
* extension[type].valueCoding = $sct#781405001 "Medicinal product package (product)"
* code = $pzn-cs#56781239 "2nd ingredient"
* code.text = "2nd ingredient"