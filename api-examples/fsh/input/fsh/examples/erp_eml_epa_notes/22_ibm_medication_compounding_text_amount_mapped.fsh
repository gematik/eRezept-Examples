Instance: erp-eml-epa-notes-22-ibm-medication-compounding-txt-amnt-Mapped
InstanceOf: EPAMedication
Usage: #example
* extension[drugCategory].valueCoding = $epa-drug-category-cs#00
* extension[isVaccine].valueBoolean = false
* form.text = "TAB"
* code.text = "Sumatriptan-1a Pharma 100 mg Tabletten"

* amount.numerator.unit =  "TAB"
* amount.numerator.extension[totalQuantity].valueString = "12"
* amount.denominator.value = 1

* ingredient[+]
  * itemCodeableConcept.text = "1st ingredient"
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
  * itemCodeableConcept.text = "2nd ingredient"
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