Instance: erp-eml-epa-notes-05-RezepturVerordnung-PZN
InstanceOf: KBV_PR_ERP_Medication_Compounding
Usage: #example
* extension[Arzneimittelkategorie].valueCoding = $KBV_CS_ERP_Medication_Category#00
* extension[Impfstoff].valueBoolean = false
* extension[Kategorie].valueCodeableConcept.coding.code = #373873005:860781008=362943005
* code.coding.code = #rezeptur
* form.text = "Lösung"
* amount.numerator.unit = "ml"
* amount.numerator.extension[Gesamtmenge].valueString = "100"
* amount.denominator.value = 1
* ingredient[0]
  * itemCodeableConcept.text = "Salicylsäure"
  * itemCodeableConcept.coding.system = $pzn-cs
  * itemCodeableConcept.coding.code = #123456789
  * strength.numerator.value = 5
  * strength.numerator.unit = "g"
  * strength.denominator.value = 1
* ingredient[+]
  * itemCodeableConcept.text = "2-propanol 70 %"
  * itemCodeableConcept.coding.system = $pzn-cs
  * itemCodeableConcept.coding.code = #987654321
  * strength.extension[MengeFreitext].valueString = "Ad 100 g"