Instance: erp-eml-epa-notes-04-Medication-Medication-Kombipackung
InstanceOf: Medication
Usage: #example
* meta.profile = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_PR_Medication|1.3"
* contained[0] = Augentropfen
* contained[+] = NasenSpray
* extension[0].url = "https://gematik.de/fhir/dev-epa-medication/StructureDefinition/epa-medication-type-extension"
* extension[=].valueCoding = $sct#781405001 "Medicinal product package"
* extension[+].url = "https://gematik.de/fhir/dev-epa-medication/StructureDefinition/medication-id-vaccine-extension"
* extension[=].valueBoolean = false
* extension[+].url = "https://gematik.de/fhir/dev-epa-medication/StructureDefinition/drug-category-extension"
* extension[=].valueCoding = #00 "Arzneimittel oder in die Arzneimittelversorgung nach § 31 SGB V einbezogenes Produkt"
* code = $pzn#1746517 "CROMO-RATIOPHARM Kombipackung"
* status = #active
* form = $KBV_CS_SFHIR_KBV_DARREICHUNGSFORM#KPG
* form.text = "Kombipackung"
* ingredient[0].itemReference = Reference(NasenSpray)
* ingredient[+].itemReference = Reference(Augentropfen)