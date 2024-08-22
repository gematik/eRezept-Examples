Instance: erp-eml-epa-notes-03-Medication-Medication-Rezeptur
InstanceOf: Medication
Usage: #example
* insert PackageMetaProfile(StructureDefinition/GEM_ERP_PR_Medication)
* contained[0] = MedicationHydrocortison
* contained[+] = MedicationDexpanthenol
* extension[0].url = "https://gematik.de/fhir/dev-epa-medication/StructureDefinition/drug-category-extension"
* extension[=].valueCoding = $epa-drug-category-cs#00
* extension[+].url = "https://gematik.de/fhir/dev-epa-medication/StructureDefinition/epa-medication-type-extension"
* extension[=].valueCoding.version = "http://snomed.info/sct/900000000000207008/version/20240201"
* extension[=].valueCoding = $sct#1208954007 "Extemporaneous preparation (product)"
* extension[+].url = "https://gematik.de/fhir/dev-epa-medication/StructureDefinition/medication-id-vaccine-extension"
* extension[=].valueBoolean = false
* code.text = "Hydrocortison-Dexpanthenol-Salbe"
* form = $KBV_CS_SFHIR_KBV_DARREICHUNGSFORM#SAL
* amount.numerator.extension.url = "https://gematik.de/fhir/dev-epa-medication/StructureDefinition/medication-total-quantity-formulation-extension"
* amount.numerator.extension.valueString = "100 ml"
* amount.numerator.value = 20
* amount.numerator.unit = "ml"
* amount.denominator.value = 1
* ingredient[0].itemReference = Reference(MedicationHydrocortison)
* ingredient[=].isActive = true
* ingredient[=].strength.numerator = 50 'g'
* ingredient[=].strength.denominator = 100 'g'
* ingredient[+].itemReference = Reference(MedicationDexpanthenol)
* ingredient[=].isActive = true
* ingredient[=].strength.numerator = 50 'g'
* ingredient[=].strength.denominator = 100 'g'

Instance: MedicationHydrocortison
InstanceOf: Medication
Usage: #inline
* meta.profile = "https://gematik.de/fhir/dev-epa-medication/StructureDefinition/epa-medication-pzn-ingredient"
* extension.url = "https://gematik.de/fhir/dev-epa-medication/StructureDefinition/epa-medication-type-extension"
* extension.valueCoding.version = "http://snomed.info/sct/900000000000207008/version/20240201"
* extension.valueCoding = $sct#781405001 "Medicinal product package (product)"
* code = $pzn#03424249 "Hydrocortison 1% Creme"
* batch.lotNumber = "56498416854"

Instance: MedicationDexpanthenol
InstanceOf: Medication
Usage: #inline
* meta.profile = "https://gematik.de/fhir/dev-epa-medication/StructureDefinition/epa-medication-pzn-ingredient"
* extension.url = "https://gematik.de/fhir/dev-epa-medication/StructureDefinition/epa-medication-type-extension"
* extension.valueCoding.version = "http://snomed.info/sct/900000000000207008/version/20240201"
* extension.valueCoding = $sct#781405001 "Medicinal product package (product)"
* code = $pzn#16667195 "Dexpanthenol 5% Creme"
* batch.lotNumber = "0132456"