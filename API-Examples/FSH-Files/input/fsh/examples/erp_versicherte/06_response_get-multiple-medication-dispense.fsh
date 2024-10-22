Instance: erp-versicherte-06-response-get-multiple-medication-dispense
InstanceOf: Bundle
Usage: #example
* type = #searchset
* timestamp = "2024-02-15T06:01:44.119+00:00"
* total = 2
* entry[0].fullUrl = "https://erp-ref.zentral.erp.splitdns.ti-dienste.de/MedicationDispense/200.000.002.097.952.60"
* entry[=].resource = 200.000.002.097.952.60
* entry[=].search.mode = #match
* entry[+].fullUrl = "https://erp-ref.zentral.erp.splitdns.ti-dienste.de/Medication/b4c2bba5-23bd-4be3-b58f-a70621edd84f"
* entry[=].resource = b4c2bba5-23bd-4be3-b58f-a70621edd84f
* entry[=].search.mode = #include
* entry[+].fullUrl = "https://erp-ref.zentral.erp.splitdns.ti-dienste.de/MedicationDispense/200.000.002.097.952.60-1"
* entry[=].resource = 200.000.002.097.952.60-1
* entry[=].search.mode = #match
* entry[+].fullUrl = "https://erp-ref.zentral.erp.splitdns.ti-dienste.de/Medication/b4c2bba5-23bd-4be3-b58f-a70621edd84e"
* entry[=].resource = b4c2bba5-23bd-4be3-b58f-a70621edd84e
* entry[=].search.mode = #include
* link.relation = "self"
* link.url = "https://erp-ref.zentral.erp.splitdns.ti-dienste.de/MedicationDispense?identifier=200.000.002.097.952.60"

Instance: 200.000.002.097.952.60
InstanceOf: MedicationDispense
Usage: #inline
* insert PackageMetaProfile(StructureDefinition/GEM_ERP_PR_MedicationDispense)
* meta.tag.display = "Beispiel MedicationDispense PKV PZN Bsp 7 1/2"
* identifier.system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* identifier.value = "200.000.002.097.952.60"
* status = #completed
* medicationReference = Reference(b4c2bba5-23bd-4be3-b58f-a70621edd84f) "Amoxicillin/Clavulansäure Heumann 875mg/125mg 10St"
* subject.identifier.system = "http://fhir.de/sid/gkv/kvid-10"
* subject.identifier.value = "X110501499"
* insert ApoTelematikID(performer.actor.identifier.value)
* whenHandedOver = "2024-02-15"
* dosageInstruction.text = "1 Tablette noch in der Nacht, dann für 7 Tage jeweils 1 Tablette morgens und 1 Tablette abends einnehmen"

Instance: 200.000.002.097.952.60-1
InstanceOf: MedicationDispense
Usage: #inline
* insert PackageMetaProfile(StructureDefinition/GEM_ERP_PR_MedicationDispense)
* meta.tag.display = "Beispiel MedicationDispense PKV PZN Bsp 7 2/2"
* identifier.system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* identifier.value = "200.000.002.097.952.60"
* status = #completed
* medicationReference = Reference(b4c2bba5-23bd-4be3-b58f-a70621edd84e) "Amoxicillin/Clavulansäure Heumann 875mg/125mg 10St"
* subject.identifier.system = "http://fhir.de/sid/gkv/kvid-10"
* subject.identifier.value = "X110501499"
* insert ApoTelematikID(performer.actor.identifier.value)
* whenHandedOver = "2024-02-15"
* dosageInstruction.text = "1 Tablette noch in der Nacht, dann für 7 Tage jeweils 1 Tablette morgens und 1 Tablette abends einnehmen"

Instance: b4c2bba5-23bd-4be3-b58f-a70621edd84e
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