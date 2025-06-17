Instance: erp-eml-epa-notes-07-verordnung-wirkstoff
InstanceOf: KBV_PR_ERP_Medication_Ingredient
Usage: #example
* extension[Arzneimittelkategorie].valueCoding = $KBV_CS_ERP_Medication_Category#00
* extension[Impfstoff].valueBoolean = false
* extension[Normgroesse].valueCode = #N1
* code = $KBV_CS_ERP_Medication_Type#wirkstoff
* form.text = "Tabletten"
* ingredient
  * itemCodeableConcept.text = "Somatropin"
  * itemCodeableConcept = $ask#22339
  * strength.numerator.value = 12
  * strength.numerator.unit = "mg"
  * strength.denominator.value = 1
  * strength.denominator.unit = "Tablette"