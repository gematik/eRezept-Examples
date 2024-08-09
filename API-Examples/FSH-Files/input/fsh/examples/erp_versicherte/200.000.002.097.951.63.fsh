Instance: 200.000.002.097.951.63
InstanceOf: MedicationDispense
Usage: #inline
* meta.profile = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_PR_MedicationDispense|1.3"
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
* contained.amount.numerator.unit = "Stück"
* contained.amount.denominator.value = 1
* identifier.system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* identifier.value = "200.000.002.097.951.63"
* status = #completed
* medicationReference = Reference(b4c2bba5-23bd-4be3-b58f-a70621edd84f) "Sumatriptan-1a Pharma 100 mg Tabletten"
* subject.identifier.system = "http://fhir.de/sid/gkv/kvid-10"
* subject.identifier.value = "X110501499"
* performer.actor.identifier.system = "https://gematik.de/fhir/sid/telematik-id"
* performer.actor.identifier.value = "3-2-APO-XanthippeVeilchenblau01"
* quantity = 1 '{Package}'
* whenHandedOver = "2024-02-15"
* dosageInstruction.text = "1-0-1-0"