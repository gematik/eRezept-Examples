Instance: NasenSpray
InstanceOf: Medication
Usage: #inline
* meta.profile = "https://gematik.de/fhir/dev-epa-medication/StructureDefinition/epa-medication-pharmaceutical-product"
* extension.url = "https://gematik.de/fhir/dev-epa-medication/StructureDefinition/epa-medication-type-extension"
* extension.valueCoding = $sct#373873005 "Pharmaceutical / biologic product (product)"
* code = $Komponentennummer#01746517-2 "Nasenspray, Lösung"
* ingredient.itemCodeableConcept = $atc#R01AC01 "Natriumcromoglicat"
* ingredient.strength.numerator = 2.8 'mg' "mg"
* ingredient.strength.denominator = 1 '1' "Sprühstoß"
* batch.lotNumber = "56498416854"