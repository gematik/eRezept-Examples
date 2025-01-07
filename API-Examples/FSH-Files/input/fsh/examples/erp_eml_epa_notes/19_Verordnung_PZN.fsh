Instance: erp-eml-epa-notes-19-verordnung-pzn
InstanceOf: KBV_PR_ERP_Medication_PZN
Usage: #example
* extension[Arzneimittelkategorie].valueCoding = $KBV_CS_ERP_Medication_Category#00
* extension[Impfstoff].valueBoolean = false
* extension[Normgroesse].valueCode = #NB
* extension[Kategorie].valueCodeableConcept.coding = $sct#763158003 "Medicinal product (product)"
* code.text = "Schmerzmittel"
* code.coding[pznCode] = $pzn-cs#12345678
* form.coding[kbvDarreichungsform].code = #TAB
* amount
  * denominator.value = 1
  * numerator.extension[Packungsgroesse].valueString = "1"
  * numerator.unit = "Stk"