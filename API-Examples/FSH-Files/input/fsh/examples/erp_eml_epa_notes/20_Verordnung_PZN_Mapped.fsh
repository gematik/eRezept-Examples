Instance: erp-eml-epa-notes-20-verordnung-pzn-Mapped
InstanceOf: EPAMedication
Usage: #example
* extension[drugCategory].valueCoding = $epa-drug-category-cs#00
* extension[type].valueCoding = $sct#781405001 "Medicinal product package (product)"
* extension[normSizeCode].valueCode = #NB
* form.coding[kbvDarreichungsform].code = #TAB
* code.text = "Schmerzmittel"
* code.coding[pzn] = $pzn-cs#12345678
* amount
  * denominator.value = 1
  * numerator.extension[packagingSize].valueString = "1"
  * numerator.unit = "Stk"