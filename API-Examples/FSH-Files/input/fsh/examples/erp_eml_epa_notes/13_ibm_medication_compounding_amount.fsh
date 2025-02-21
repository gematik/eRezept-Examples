Instance: erp-eml-epa-notes-13-ibm-medication-compounding-amount
InstanceOf: KBV_PR_ERP_Medication_Compounding
Usage: #example
* code = $KBV_CS_ERP_Medication_Type#rezeptur
* code.text = "Sumatriptan-1a Pharma 100 mg Tabletten"
* form.text = "TAB"
* extension[Arzneimittelkategorie].valueCoding = $KBV_CS_ERP_Medication_Category#00
* extension[Impfstoff].valueBoolean = false
* extension[Kategorie].valueCodeableConcept.coding.code = #1208954007

* amount.numerator = $unitsofmeasure#{tbl} "TAB"
* amount.numerator.extension[Gesamtmenge].valueString = "12"
* amount.denominator.value = 1

* ingredient[+]
  * strength.extension[MengeFreitext].valueString = "100 mg"
  * itemCodeableConcept.text = "1st ingredient"
  * itemCodeableConcept = $pzn-cs#12343219
* ingredient[+]
  * strength.extension[MengeFreitext].valueString = "10 g"
  * itemCodeableConcept.text = "2nd ingredient"
  * itemCodeableConcept = $pzn-cs#56781239

