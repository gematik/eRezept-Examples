Instance: erp-versicherte-05-response-get-single-medicationdispense-by-id
InstanceOf: Bundle
Usage: #example
* type = #searchset
* timestamp = "2024-02-15T06:01:44.119+00:00"
* total = 0
* link.relation = "self"
* link.url = "https://erp-ref.zentral.erp.splitdns.ti-dienste.de/MedicationDispense?identifier=200.000.002.097.952.60"
* entry[0].fullUrl = "https://erp-ref.zentral.erp.splitdns.ti-dienste.de/MedicationDispense/200.000.002.097.951.63"
* entry[=].resource = 200.000.002.097.951.63
* entry[=].search.mode = #match
* entry[+].fullUrl = "https://erp-ref.zentral.erp.splitdns.ti-dienste.de/Medication/b4c2bba5-23bd-4be3-b58f-a70621edd84f"
* entry[=].resource = b4c2bba5-23bd-4be3-b58f-a70621edd84f
* entry[=].search.mode = #include

Instance: 200.000.002.097.951.63
InstanceOf: MedicationDispense
Usage: #inline
* insert PackageMetaProfile(StructureDefinition/GEM_ERP_PR_MedicationDispense)
* identifier.system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* identifier.value = "200.000.002.097.951.63"
* status = #completed
* medicationReference = Reference(b4c2bba5-23bd-4be3-b58f-a70621edd84f) "Sumatriptan-1a Pharma 100 mg Tabletten"
* subject.identifier.system = "http://fhir.de/sid/gkv/kvid-10"
* subject.identifier.value = "X110501499"
* insert ApoTelematikID(performer.actor.identifier.value)
* quantity = 1 '{Package}'
* whenHandedOver = "2024-02-15"
* dosageInstruction.text = "1-0-1-0"

Instance: b4c2bba5-23bd-4be3-b58f-a70621edd84f
InstanceOf: Medication
Usage: #inline
* insert PackageMetaProfile(StructureDefinition/GEM_ERP_PR_Medication)
//* meta.profile = "https://fhir.kbv.de/StructureDefinition/KBV_PR_ERP_Medication_PZN|1.1.0"
* extension[0].url = "https://gematik.de/fhir/epa-medication/StructureDefinition/drug-category-extension"
* extension[=].valueCoding.system = $epa-drug-category-cs
* extension[=].valueCoding.code = #00
* extension[+].url = "https://gematik.de/fhir/epa-medication/StructureDefinition/medication-id-vaccine-extension"
* extension[=].valueBoolean = false
* extension[+].url = "http://fhir.de/StructureDefinition/normgroesse"
* extension[=].valueCode = #N1
* code = $pzn-cs#03879429
* code.text = "Beloc-ZokÂ® mite 47,5 mg, 30 Retardtabletten N1"
* form = $KBV_CS_SFHIR_KBV_DARREICHUNGSFORM#RET
* amount.numerator.extension.url = "https://gematik.de/fhir/epa-medication/StructureDefinition/medication-total-quantity-formulation-extension"
* amount.numerator.extension.valueString = "30"
* amount.numerator = $unitsofmeasure#{St} "Stück"
* amount.denominator.value = 1