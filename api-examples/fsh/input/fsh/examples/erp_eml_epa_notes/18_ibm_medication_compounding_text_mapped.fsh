Instance: erp-eml-epa-notes-18-ibm-medication-compounding-text-Mapped
InstanceOf: EPAMedication
Usage: #example
* extension[drugCategory].valueCoding = $epa-drug-category-cs#00
* extension[isVaccine].valueBoolean = false
* form.text = "TAB"
* code.text = "Sumatriptan-1a Pharma 100 mg Tabletten"

* amount.numerator = $unitsofmeasure#{tbl} "TAB"
  * extension[totalQuantity].valueString = "12"
* amount.denominator.value = 1

* ingredient[+]
  * itemCodeableConcept.text = "1st ingredient"
  * strength.numerator = 1 '{tbl}' "TAB"
  * strength.denominator.value = 1
  * strength.denominator.system.extension[+].url = $data-absent-reason
  * strength.denominator.system.extension[=].valueCode = #unknown
  * strength.denominator.code.extension[+].url = $data-absent-reason
  * strength.denominator.code.extension[=].valueCode = #unknown

* ingredient[+]
  * itemCodeableConcept.text = "2nd ingredient"
  * strength.numerator = 2 '{tbl}' "TAB"
  * strength.denominator
    * value = 1
    * system.extension[+].url = $data-absent-reason
    * system.extension[=].valueCode = #unknown
    * code.extension[+].url = $data-absent-reason
    * code.extension[=].valueCode = #unknown