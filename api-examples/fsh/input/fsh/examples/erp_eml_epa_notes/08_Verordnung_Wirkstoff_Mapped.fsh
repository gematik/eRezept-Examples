Instance: erp-eml-epa-notes-08-verordnung-wirkstoff-Mapped
InstanceOf: EPAMedication
Usage: #example
* extension[drugCategory].valueCoding = $epa-drug-category-cs#00
* extension[type].valueCoding = $sct#781405001 "Medicinal product package (product)"
* extension[normSizeCode].valueCode = #N1
* form.text = "Tabletten"
* ingredient[+]
  * itemCodeableConcept.text = "Somatropin"
  * itemCodeableConcept = $ask#22339
  * strength.numerator
    * value = 12
    * unit = "mg"
    * system.extension[+].url = $data-absent-reason
    * system.extension[=].valueCode = #unknown
    * code.extension[+].url = $data-absent-reason
    * code.extension[=].valueCode = #unknown
  * strength.denominator
    * value = 1
    * system.extension[+].url = $data-absent-reason
    * system.extension[=].valueCode = #unknown
    * code.extension[+].url = $data-absent-reason
    * code.extension[=].valueCode = #unknown
