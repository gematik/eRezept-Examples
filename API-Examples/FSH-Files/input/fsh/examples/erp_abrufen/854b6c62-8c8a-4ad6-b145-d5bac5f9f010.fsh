Instance: 854b6c62-8c8a-4ad6-b145-d5bac5f9f010
InstanceOf: MedicationDispense
Usage: #inline
* meta.profile = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_PR_MedicationDispense|1.3"
* contained.resourceType = "Medication"
* contained.id = "756b422f-4df0-4afe-9d54-da534a44109e"
* contained.meta.profile = "https://fhir.kbv.de/StructureDefinition/KBV_PR_ERP_Medication_PZN|1.1.0"
* contained.extension[0].url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_Base_Medication_Type"
* contained.extension[=].valueCodeableConcept.coding.version = "http://snomed.info/sct/900000000000207008/version/20220331"
* contained.extension[=].valueCodeableConcept.coding = $sct#763158003 "Medicinal product (product)"
* contained.extension[+].url = "http://fhir.de/StructureDefinition/normgroesse"
* contained.extension[=].valueCode = #N1
* contained.extension[+].url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_Category"
* contained.extension[=].valueCoding = $KBV_CS_ERP_Medication_Category#00
* contained.extension[+].url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_Vaccine"
* contained.extension[=].valueBoolean = false
* contained.code = $pzn#14186244
* contained.code.text = "FLUSARION EH50/250UG/60 PC"
* contained.form = $KBV_CS_SFHIR_KBV_DARREICHUNGSFORM#IHP
* identifier.system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* identifier.value = "160.000.088.357.031.88"
* status = #completed
* medicationReference = Reference(756b422f-4df0-4afe-9d54-da534a44109e)
* subject.identifier.system = "http://fhir.de/sid/gkv/kvid-10"
* subject.identifier.value = "K220635158"
* performer.actor.identifier.system = "https://gematik.de/fhir/sid/telematik-id"
* performer.actor.identifier.value = "3-15.2.1456789123.191"
* whenHandedOver = "2021-11-30"