Instance: erp-eml-epa-notes-04-Medication-Medication-Kombipackung
InstanceOf: GEM_ERP_PR_Medication
Usage: #example
* contained[+] = Augentropfen
* contained[+] = NasenSpray
* extension[type].valueCoding = $sct#781405001 "Medicinal product package"
* extension[isVaccine].valueBoolean = false
* extension[drugCategory].valueCoding = EPADrugCategoryCS#00 "Arzneimittel oder in die Arzneimittelversorgung nach § 31 SGB V einbezogenes Produkt"
* code = $pzn-cs#1746517 "CROMO-RATIOPHARM Kombipackung"
* status = #active
* form = $KBV_CS_SFHIR_KBV_DARREICHUNGSFORM#KPG
* form.text = "Kombipackung"
* ingredient[0].itemReference = Reference(NasenSpray)
* ingredient[+].itemReference = Reference(Augentropfen)

Instance: NasenSpray
InstanceOf: EPAMedicationPharmaceuticalProduct
Usage: #inline
* extension[type].valueCoding = $sct#373873005 "Pharmaceutical / biologic product (product)"
* code = $cs-product-key#01746517-2 "Nasenspray, Lösung"
* ingredient.itemCodeableConcept = $atc#R01AC01 "Natriumcromoglicat"
* ingredient.strength.numerator = 2.8 'mg' "mg"
* ingredient.strength.denominator = 1 '1' "Sprühstoß"
* batch.lotNumber = "56498416854"

Instance: Augentropfen
InstanceOf: EPAMedicationPharmaceuticalProduct
Usage: #inline
* extension[type].valueCoding = $sct#373873005 "Pharmaceutical / biologic product (product)"
* code = $cs-product-key#01746517-1 "Augentropfen"
* ingredient.itemCodeableConcept = $atc#R01AC01 "Natriumcromoglicat"
* ingredient.strength.numerator = 20 'mg' "mg"
* ingredient.strength.denominator = 1 'ml' "ml"
* batch.lotNumber = "0132456"