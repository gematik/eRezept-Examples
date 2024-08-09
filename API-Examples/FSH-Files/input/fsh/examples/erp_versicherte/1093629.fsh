Instance: 1093629
InstanceOf: MedicationDispense
Usage: #inline
* status = #completed
* identifier.value = "160.123.456.789.123.58"
* identifier.system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* medicationReference = Reference(med0314) "Sumatriptan-1a Pharma 100 mg Tabletten"
* meta.profile = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_PR_MedicationDispense|1.3"
* contained.meta.profile = "https://fhir.kbv.de/StructureDefinition/KBV_PR_ERP_Medication_PZN|1.1.0"
* contained.id = "med0314"
* contained.code = $pzn#06313728
* contained.code.text = "Sumatriptan-1a Pharma 100 mg Tabletten"
* contained.extension[0].url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_Base_Medication_Type"
* contained.extension[=].valueCodeableConcept.coding.version = "http://snomed.info/sct/900000000000207008/version/20220331"
* contained.extension[=].valueCodeableConcept.coding = $sct#763158003 "Medicinal product (product)"
* contained.extension[+].url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_Category"
* contained.extension[=].valueCoding = $KBV_CS_ERP_Medication_Category#00
* contained.extension[+].url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_Vaccine"
* contained.extension[=].valueBoolean = false
* contained.resourceType = "Medication"
* contained.amount.denominator.value = 1
* contained.amount.numerator = $unitsofmeasure#{tbl} "Tabletten"
* contained.amount.numerator.extension.url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_PackagingSize"
* contained.amount.numerator.extension.valueString = "10"
* contained.form = $KBV_CS_SFHIR_KBV_DARREICHUNGSFORM#TAB
* dosageInstruction.text = "1-0-1-0"
* performer.actor.identifier.value = "3-SMC-B-Testkarte-883110000129070"
* performer.actor.identifier.system = "https://gematik.de/fhir/sid/telematik-id"
* whenHandedOver = "2020-03-20"
* quantity = 1 '{Package}'
* subject.identifier.value = "X123456789"
* subject.identifier.system = "http://fhir.de/sid/gkv/kvid-10"