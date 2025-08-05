Instance: erp-eml-epa-notes-15-KPGVerordnung-PZN
InstanceOf: KBV_PR_ERP_Medication_PZN
Usage: #example
* extension[Arzneimittelkategorie].valueCoding = $KBV_CS_ERP_Medication_Category#00
* extension[Impfstoff].valueBoolean = false
* extension[Kategorie].valueCodeableConcept.coding = $sct#763158003 "Medicinal product (product)"
* extension[Normgroesse].valueCode = #N2
* code.text = "ZacPac® 40mg/1.000mg/500mg Kombip. 42 Tbl. N2"
* code = $pzn-cs#01264706
* form = $KBV_CS_SFHIR_KBV_DARREICHUNGSFORM#KPG
* amount.numerator.extension[Packungsgroesse].valueString = "1"
* amount.denominator.value = 1
* amount.numerator.unit = "P"