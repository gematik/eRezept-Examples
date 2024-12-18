Instance: erp-eml-epa-notes-16-KPGVerordnung-PZN-Mapped
InstanceOf: EPAMedication
Usage: #example
* extension[drugCategory].valueCoding = $epa-drug-category-cs#00
* extension[type].valueCoding = $sct#1208954007 "Extemporaneous preparation (product)"
* extension[isVaccine].valueBoolean = false
* extension[normSizeCode].valueCode = #N2
* code.text = "ZacPac® 40mg/1.000mg/500mg Kombip. 42 Tbl. N2"
* code = $pzn-cs#01264706
* form = $KBV_CS_SFHIR_KBV_DARREICHUNGSFORM#KPG
* amount.numerator
  * extension[packagingSize].valueString = "1"
  * unit = "P"
* amount.denominator.value = 1
* ingredient[+].itemReference
  * extension[+].url = $data-absent-reason
  * extension[=].valueCode = #unknown