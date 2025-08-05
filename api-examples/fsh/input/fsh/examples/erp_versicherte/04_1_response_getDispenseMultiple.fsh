Instance: erp-versicherte-04-response-getDispenseMultiple1
InstanceOf: Bundle
Title:   "Example for Multiple MedicationDispense with Medication for a Task"
Usage: #example
* type = #searchset
* entry[+].fullUrl = "https://erp-dev.zentral.erp.splitdns.ti-dienste.de/MedicationDispense/160.000.000.000.000.01"
* entry[=].resource = Simple-MedicationDispense
* entry[=].search.mode = #match
* entry[+].fullUrl = "urn:uuid:86ce7563-9819-4dfa-9944-d307f7cfec9b"
* entry[=].resource = Simple-Medication
* entry[=].search.mode = #include
* entry[+].fullUrl = "https://erp-dev.zentral.erp.splitdns.ti-dienste.de/MedicationDispense/160.000.000.000.000.02"
* entry[=].resource = Simple-MedicationDispense-2
* entry[=].search.mode = #match
* entry[+].fullUrl = "urn:uuid:56c61db7-0a94-4b7b-832a-b8ac3752035d"
* entry[=].resource = Simple-Medication-2
* entry[=].search.mode = #include

Instance: erp-versicherte-04-response-getDispenseMultiple2
InstanceOf: Bundle
Title:   "Example for MedicationDispense with a complex Medication"
Usage: #example
* type = #searchset
* entry[+].fullUrl = "https://erp-dev.zentral.erp.splitdns.ti-dienste.de/MedicationDispense/160.000.000.000.000.01"
* entry[=].resource = Simple-MedicationDispense
* entry[=].search.mode = #match
* entry[+].fullUrl = "urn:uuid:86ce7563-9819-4dfa-9944-d307f7cfec9b"
* entry[=].resource = Simple-Medication
* entry[=].search.mode = #include
* entry[+].fullUrl = "https://erp-dev.zentral.erp.splitdns.ti-dienste.de/MedicationDispense/160.000.000.000.000.02"
* entry[=].resource = Simple-MedicationDispense-2
* entry[=].search.mode = #match
* entry[+].fullUrl = "urn:uuid:56c61db7-0a94-4b7b-832a-b8ac3752035d"
* entry[=].resource = Simple-Medication-2
* entry[=].search.mode = #include
//1.2
* entry[+].fullUrl = "https://erp-dev.zentral.erp.splitdns.ti-dienste.de/MedicationDispense/160.000.000.000.000.04"
* entry[=].resource =  MedicationDispense-1-2
* entry[=].search.mode = #match
//1.3
* entry[+].fullUrl = "https://erp-dev.zentral.erp.splitdns.ti-dienste.de/MedicationDispense/160.000.000.000.000.05"
* entry[=].resource =  MedicationDispense-1-3
* entry[=].search.mode = #match

Instance: Simple-MedicationDispense
InstanceOf: GEM_ERP_PR_MedicationDispense
Usage: #inline
Title: "Example Medication Dispense"
Description: "Example of a Medication Dispense."
* id = "160.000.000.000.000.01"
* identifier[prescriptionID].system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* identifier[prescriptionID].value = "160.000.000.000.000.01"
* insert GKV_Identifier(subject.identifier)
* insert ApoTelematikID(performer.actor.identifier)
* insert Date(whenHandedOver)
* medicationReference = Reference(urn:uuid:86ce7563-9819-4dfa-9944-d307f7cfec9b)

Instance: Simple-Medication
InstanceOf: GEM_ERP_PR_Medication
Title:   "Sample Simple Medication"
Usage: #inline
* id = "86ce7563-9819-4dfa-9944-d307f7cfec9b"
* code.coding[pzn].system = "http://fhir.de/CodeSystem/ifa/pzn"
* code.coding[pzn].code = #06313728
* batch.lotNumber = "123456"

Instance: Simple-MedicationDispense-2
InstanceOf: GEM_ERP_PR_MedicationDispense
Usage: #inline
Title: "Example Medication Dispense 2"
Description: "Example of a Medication Dispense 2."
* id = "160.000.000.000.000.02"
* identifier[prescriptionID].system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* identifier[prescriptionID].value = "160.000.000.000.000.02"
* insert GKV_Identifier(subject.identifier)
* insert ApoTelematikID(performer.actor.identifier)
* insert Date(whenHandedOver)
* medicationReference = Reference(urn:uuid:56c61db7-0a94-4b7b-832a-b8ac3752035d)

Instance: Simple-Medication-2
InstanceOf: GEM_ERP_PR_Medication
Title:   "Sample Simple Medication 2"
Usage: #inline
* id = "56c61db7-0a94-4b7b-832a-b8ac3752035d"
* code.coding[pzn].system = "http://fhir.de/CodeSystem/ifa/pzn"
* code.coding[pzn].code = #06313728
* batch.lotNumber = "123456"

Instance: MedicationDispense-1-2
InstanceOf: MedicationDispense
Usage: #inline
* id = "160.000.000.000.000.04"
* medicationReference = Reference(Medication-1-2)
* contained = Medication-1-2
* dosageInstruction.text = "1-0-1-0"
* insert GKV_Identifier(subject.identifier)
* status = #completed
* meta.profile = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_PR_MedicationDispense|1.2"
* insert ApoTelematikID(performer.actor.identifier)
* whenHandedOver = "2024-07-02"
* identifier.value = "160.000.000.000.000.04"
* identifier.system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"

Instance: Medication-1-2
InstanceOf: Medication
Usage: #inline
* id = "65b6d139-93a6-459f-8b3c-5ae1d1f809a2"
* code.text = "Sumatriptan Dura 100mg"
* code = $pzn-cs#04866280
* extension[0].url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_Category"
* extension[=].valueCoding = $KBV_CS_ERP_Medication_Category#00
* extension[+].url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_Base_Medication_Type"
* extension[=].valueCodeableConcept.coding = $sct#763158003 "Medicinal product (product)"
* extension[=].valueCodeableConcept.coding.version = "http://snomed.info/sct/900000000000207008/version/20220331"
* extension[+].url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_Vaccine"
* extension[=].valueBoolean = false
* extension[+].url = "http://fhir.de/StructureDefinition/normgroesse"
* extension[=].valueCode = #N3
* meta.profile = "https://fhir.kbv.de/StructureDefinition/KBV_PR_ERP_Medication_PZN|1.1.0"
* form = $KBV_CS_SFHIR_KBV_DARREICHUNGSFORM#FTA
* amount.denominator.value = 1
* amount.numerator.extension.url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_PackagingSize"
* amount.numerator.extension.valueString = "12"
* amount.numerator.unit = "St"
* batch.lotNumber = "123456"

//1.3
Instance: MedicationDispense-1-3
InstanceOf: MedicationDispense
Usage: #inline
* id = "160.000.000.000.000.05"
* medicationReference = Reference(Medication-1-3)
* contained = Medication-1-3
* dosageInstruction.text = "1-0-1-0"
* insert GKV_Identifier(subject.identifier)
* status = #completed
* meta.profile = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_PR_MedicationDispense|1.3"
* insert ApoTelematikID(performer.actor.identifier)
* whenHandedOver = "2024-07-02"
* identifier.value = "160.000.000.000.000.05"
* identifier.system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"

Instance: Medication-1-3
InstanceOf: Medication
Usage: #inline
* id = "7ebb8f0c-06a7-4b71-b6b2-81000eabbf8d"
* code.text = "Sumatriptan Dura 100mg"
* code = $pzn-cs#04866280
* extension[0].url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_Category"
* extension[=].valueCoding = $KBV_CS_ERP_Medication_Category#00
* extension[+].url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_Base_Medication_Type"
* extension[=].valueCodeableConcept.coding = $sct#763158003 "Medicinal product (product)"
* extension[=].valueCodeableConcept.coding.version = "http://snomed.info/sct/900000000000207008/version/20220331"
* extension[+].url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_Vaccine"
* extension[=].valueBoolean = false
* extension[+].url = "http://fhir.de/StructureDefinition/normgroesse"
* extension[=].valueCode = #N3
* meta.profile = "https://fhir.kbv.de/StructureDefinition/KBV_PR_ERP_Medication_PZN|1.1.0"
* form = $KBV_CS_SFHIR_KBV_DARREICHUNGSFORM#FTA
* amount.denominator.value = 1
* amount.numerator.extension.url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_PackagingSize"
* amount.numerator.extension.valueString = "12"
* amount.numerator.unit = "St"
* batch.lotNumber = "123456"