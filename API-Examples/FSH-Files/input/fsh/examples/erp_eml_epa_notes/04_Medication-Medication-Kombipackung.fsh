Instance: erp-eml-epa-notes-04-Medication-Medication-Kombipackung
InstanceOf: Medication
Usage: #example
* insert PackageMetaProfile(StructureDefinition/GEM_ERP_PR_Medication)
* contained[0] = Augentropfen
* contained[+] = NasenSpray
* extension[0].url = "https://gematik.de/fhir/epa-medication/StructureDefinition/epa-medication-type-extension"
* extension[=].valueCoding = $sct#781405001 "Medicinal product package"
* extension[+].url = "https://gematik.de/fhir/epa-medication/StructureDefinition/medication-id-vaccine-extension"
* extension[=].valueBoolean = false
* extension[+].url = "https://gematik.de/fhir/epa-medication/StructureDefinition/drug-category-extension"
* extension[=].valueCoding = #00 "Arzneimittel oder in die Arzneimittelversorgung nach § 31 SGB V einbezogenes Produkt"
* code = $pzn-cs#1746517 "CROMO-RATIOPHARM Kombipackung"
* status = #active
* form = $KBV_CS_SFHIR_KBV_DARREICHUNGSFORM#KPG
* form.text = "Kombipackung"
* ingredient[0].itemReference = Reference(NasenSpray)
* ingredient[+].itemReference = Reference(Augentropfen)

Instance: NasenSpray
InstanceOf: Medication
Usage: #inline
* meta.profile = "https://gematik.de/fhir/epa-medication/StructureDefinition/epa-medication-pharmaceutical-product"
* extension.url = "https://gematik.de/fhir/epa-medication/StructureDefinition/epa-medication-type-extension"
* extension.valueCoding = $sct#373873005 "Pharmaceutical / biologic product (product)"
* code = $cs-product-key#01746517-2 "Nasenspray, Lösung"
* ingredient.itemCodeableConcept = $atc#R01AC01 "Natriumcromoglicat"
* ingredient.strength.numerator = 2.8 'mg' "mg"
* ingredient.strength.denominator = 1 '1' "Sprühstoß"
* batch.lotNumber = "56498416854"

Instance: Augentropfen
InstanceOf: Medication
Usage: #inline
* meta.profile = "https://gematik.de/fhir/epa-medication/StructureDefinition/epa-medication-pharmaceutical-product"
* extension.url = "https://gematik.de/fhir/epa-medication/StructureDefinition/epa-medication-type-extension"
* extension.valueCoding = $sct#373873005 "Pharmaceutical / biologic product (product)"
* code = $cs-product-key#01746517-1 "Augentropfen"
* ingredient.itemCodeableConcept = $atc#R01AC01 "Natriumcromoglicat"
* ingredient.strength.numerator = 20 'mg' "mg"
* ingredient.strength.denominator = 1 'ml' "ml"
* batch.lotNumber = "0132456"