Instance: erp-abrufen-07-request-taskCloseMultiple
InstanceOf: Bundle
Usage: #example
* insert PackageMetaProfile(StructureDefinition/GEM_ERP_PR_CloseOperationInputBundle)
* type = #collection
* entry[0].fullUrl = "urn:uuid:a3ddc2b1-826d-4b81-87b2-558834e00f50"
* entry[=].resource = a3ddc2b1-826d-4b81-87b2-558834e00f50
* entry[+].fullUrl = "urn:uuid:854b6c62-8c8a-4ad6-b145-d5bac5f9f010"
* entry[=].resource = 854b6c62-8c8a-4ad6-b145-d5bac5f9f010

Instance: a3ddc2b1-826d-4b81-87b2-558834e00f50
InstanceOf: MedicationDispense
Usage: #inline
* insert PackageMetaProfile(StructureDefinition/GEM_ERP_PR_MedicationDispense)
* contained.resourceType = "Medication"
* contained.id = "c2b10a5e-3d71-434c-86e0-824af208a2bf"
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
* medicationReference = Reference(c2b10a5e-3d71-434c-86e0-824af208a2bf)
* subject.identifier.system = "http://fhir.de/sid/gkv/kvid-10"
* subject.identifier.value = "K220635158"
* performer.actor.identifier.system = "https://gematik.de/fhir/sid/telematik-id"
* performer.actor.identifier.value = "3-15.2.1456789123.191"
* whenHandedOver = "2021-11-30"

Instance: 854b6c62-8c8a-4ad6-b145-d5bac5f9f010
InstanceOf: MedicationDispense
Usage: #inline
* insert PackageMetaProfile(StructureDefinition/GEM_ERP_PR_MedicationDispense)
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