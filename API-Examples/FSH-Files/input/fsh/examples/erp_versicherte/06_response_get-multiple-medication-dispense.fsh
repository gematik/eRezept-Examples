Instance: erp-versicherte-06-response-get-multiple-medication-dispense
InstanceOf: Bundle
Usage: #example
* type = #searchset
* timestamp = "2024-02-15T06:01:44.119+00:00"
* total = 0
* entry[0].fullUrl = "https://erp-ref.zentral.erp.splitdns.ti-dienste.de/MedicationDispense/200.000.002.097.952.60"
* entry[=].resource = 200.000.002.097.952.60
* entry[=].search.mode = #match
* entry[+].fullUrl = "https://erp-ref.zentral.erp.splitdns.ti-dienste.de/MedicationDispense/200.000.002.097.952.60-1"
* entry[=].resource = 200.000.002.097.952.60-1
* entry[=].search.mode = #match
* link.relation = "self"
* link.url = "https://erp-ref.zentral.erp.splitdns.ti-dienste.de/MedicationDispense?identifier=200.000.002.097.952.60"

Instance: 200.000.002.097.952.60
InstanceOf: MedicationDispense
Usage: #inline
* insert PackageMetaProfile(StructureDefinition/GEM_ERP_PR_MedicationDispense)
* meta.tag.display = "Beispiel MedicationDispense PKV PZN Bsp 7 1/2"
* contained.resourceType = "Medication"
* contained.id = "b4c2bba5-23bd-4be3-b58f-a70621edd84f"
* contained.meta.profile = "https://fhir.kbv.de/StructureDefinition/KBV_PR_ERP_Medication_PZN|1.1.0"
* contained.extension[0].url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_Base_Medication_Type"
* contained.extension[=].valueCodeableConcept.coding.version = "http://snomed.info/sct/900000000000207008/version/20220331"
* contained.extension[=].valueCodeableConcept.coding = $sct#763158003 "Medicinal product (product)"
* contained.extension[+].url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_Category"
* contained.extension[=].valueCoding = $KBV_CS_ERP_Medication_Category#00
* contained.extension[+].url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_Vaccine"
* contained.extension[=].valueBoolean = false
* contained.extension[+].url = "http://fhir.de/StructureDefinition/normgroesse"
* contained.extension[=].valueCode = #N1
* contained.code = $pzn#03879429
* contained.code.text = "Beloc-ZokÂ® mite 47,5 mg, 30 Retardtabletten N1"
* contained.form = $KBV_CS_SFHIR_KBV_DARREICHUNGSFORM#RET
* contained.amount.numerator.extension.url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_PackagingSize"
* contained.amount.numerator.extension.valueString = "30"
* contained.amount.numerator.unit = "StÃ¼ck"
* contained.amount.denominator.value = 1
* identifier.system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* identifier.value = "200.000.002.097.952.60"
* status = #completed
* medicationReference = Reference(b4c2bba5-23bd-4be3-b58f-a70621edd84f) "Amoxicillin/Clavulansäure Heumann 875mg/125mg 10St"
* subject.identifier.system = "http://fhir.de/sid/pkv/kvid-10"
* subject.identifier.value = "X110501499"
* performer.actor.identifier.system = "https://gematik.de/fhir/sid/telematik-id"
* performer.actor.identifier.value = "3-2-APO-XanthippeVeilchenblau01"
* whenHandedOver = "2024-02-15"
* dosageInstruction.text = "1 Tablette noch in der Nacht, dann für 7 Tage jeweils 1 Tablette morgens und 1 Tablette abends einnehmen"

Instance: 200.000.002.097.952.60-1
InstanceOf: MedicationDispense
Usage: #inline
* insert PackageMetaProfile(StructureDefinition/GEM_ERP_PR_MedicationDispense)
* meta.tag.display = "Beispiel MedicationDispense PKV PZN Bsp 7 2/2"
* contained.resourceType = "Medication"
* contained.id = "b4c2bba5-23bd-4be3-b58f-a70621edd84f"
* contained.meta.profile = "https://fhir.kbv.de/StructureDefinition/KBV_PR_ERP_Medication_PZN|1.1.0"
* contained.extension[0].url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_Base_Medication_Type"
* contained.extension[=].valueCodeableConcept.coding.version = "http://snomed.info/sct/900000000000207008/version/20220331"
* contained.extension[=].valueCodeableConcept.coding = $sct#763158003 "Medicinal product (product)"
* contained.extension[+].url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_Category"
* contained.extension[=].valueCoding = $KBV_CS_ERP_Medication_Category#00
* contained.extension[+].url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_Vaccine"
* contained.extension[=].valueBoolean = false
* contained.extension[+].url = "http://fhir.de/StructureDefinition/normgroesse"
* contained.extension[=].valueCode = #N1
* contained.code = $pzn#03879429
* contained.code.text = "Beloc-ZokÂ® mite 47,5 mg, 30 Retardtabletten N1"
* contained.form = $KBV_CS_SFHIR_KBV_DARREICHUNGSFORM#RET
* contained.amount.numerator.extension.url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_PackagingSize"
* contained.amount.numerator.extension.valueString = "30"
* contained.amount.numerator.unit = "StÃ¼ck"
* contained.amount.denominator.value = 1
* identifier.system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* identifier.value = "200.000.002.097.952.60"
* status = #completed
* medicationReference = Reference(b4c2bba5-23bd-4be3-b58f-a70621edd84f) "Amoxicillin/Clavulansäure Heumann 875mg/125mg 10St"
* subject.identifier.system = "http://fhir.de/sid/pkv/kvid-10"
* subject.identifier.value = "X110501499"
* performer.actor.identifier.system = "https://gematik.de/fhir/sid/telematik-id"
* performer.actor.identifier.value = "3-2-APO-XanthippeVeilchenblau01"
* whenHandedOver = "2024-02-15"
* dosageInstruction.text = "1 Tablette noch in der Nacht, dann für 7 Tage jeweils 1 Tablette morgens und 1 Tablette abends einnehmen"