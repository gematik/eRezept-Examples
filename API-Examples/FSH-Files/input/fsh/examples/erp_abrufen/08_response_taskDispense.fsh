Instance: erp-abrufen-08-response-taskDispense
InstanceOf: MedicationDispense
Usage: #example
* insert PackageMetaProfile(StructureDefinition/GEM_ERP_PR_MedicationDispense)
* contained = med0314
* identifier.system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* identifier.value = "160.123.456.789.123.58"
* status = #completed
* medicationReference = Reference(med0314) "Sumatriptan-1a Pharma 100 mg Tabletten"
* subject.identifier.system = "http://fhir.de/sid/gkv/kvid-10"
* subject.identifier.value = "X123456789"
* performer.actor.identifier.system = "https://gematik.de/fhir/sid/telematik-id"
* performer.actor.identifier.value = "3-SMC-B-Testkarte-883110000129070"
* quantity = 1 '{Package}'
* whenHandedOver = "2020-03-20"
* dosageInstruction.text = "1-0-1-0"

Instance: med0314
InstanceOf: Medication
Usage: #inline
* meta.profile = "https://fhir.kbv.de/StructureDefinition/KBV_PR_ERP_Medication_PZN|1.1.0"
* extension[0].url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_Base_Medication_Type"
* extension[=].valueCodeableConcept.coding.version = "http://snomed.info/sct/900000000000207008/version/20220331"
* extension[=].valueCodeableConcept.coding = $sct#763158003 "Medicinal product (product)"
* extension[+].url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_Category"
* extension[=].valueCoding = $KBV_CS_ERP_Medication_Category#00
* extension[+].url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_Vaccine"
* extension[=].valueBoolean = false
* code = $pzn#06313728
* code.text = "Sumatriptan-1a Pharma 100 mg Tabletten"
* form = $KBV_CS_SFHIR_KBV_DARREICHUNGSFORM#TAB
* amount.numerator.extension.url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_PackagingSize"
* amount.numerator.extension.valueString = "10"
* amount.numerator = $unitsofmeasure#{tbl} "Tabletten"
* amount.denominator.value = 1