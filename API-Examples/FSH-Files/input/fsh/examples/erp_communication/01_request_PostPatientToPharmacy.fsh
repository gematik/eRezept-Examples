Instance: erp-communication-01-request-PostPatientToPharmacy
InstanceOf: Communication
Usage: #example
* insert PackageMetaProfile(StructureDefinition/GEM_ERP_PR_Communication_InfoReq)
* contained = 5fe6e06c-8725-46d5-aecd-e65e041ca3de
* basedOn = Reference(160.123.456.789.123.58)
* status = #unknown
* about = Reference(5fe6e06c-8725-46d5-aecd-e65e041ca3de)
* recipient.identifier.system = "https://gematik.de/fhir/sid/telematik-id"
* recipient.identifier.value = "3-1.54.10123404"
* payload.extension[0].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_InsuranceProvider"
* payload.extension[=].valueIdentifier.system = "http://fhir.de/sid/arge-ik/iknr"
* payload.extension[=].valueIdentifier.value = "104212059"
* payload.extension[+].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_SupplyOptionsType"
* payload.extension[=].extension[0].url = "onPremise"
* payload.extension[=].extension[=].valueBoolean = true
* payload.extension[=].extension[+].url = "delivery"
* payload.extension[=].extension[=].valueBoolean = true
* payload.extension[=].extension[+].url = "shipment"
* payload.extension[=].extension[=].valueBoolean = false
* payload.extension[+].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_SubstitutionAllowedType"
* payload.extension[=].valueBoolean = true
* payload.extension[+].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_PrescriptionType"
* payload.extension[=].valueCoding = $GEM_ERP_CS_FlowType#160 "Muster 16 (Apothekenpflichtige Arzneimittel)"
* payload.extension[+].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_PackageQuantity"
* payload.extension[=].valueQuantity = 1 '{Package}'
* payload.contentString = "Hallo, ich wollte gern fragen, ob das Medikament bei Ihnen vorraetig ist."

Instance: 5fe6e06c-8725-46d5-aecd-e65e041ca3de
InstanceOf: Medication
Usage: #inline
* meta.profile = "https://fhir.kbv.de/StructureDefinition/KBV_PR_ERP_Medication_PZN|1.1.0"
* extension[0].url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_Base_Medication_Type"
* extension[=].valueCodeableConcept.coding.version = "http://snomed.info/sct/900000000000207008/version/20220331"
* extension[=].valueCodeableConcept.coding = $sct#763158003 "Medicinal product (product)"
* extension[+].url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_Category"
* extension[=].valueCoding.system = $KBV_CS_ERP_Medication_Category
* extension[=].valueCoding.code = #00
* extension[+].url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_Vaccine"
* extension[=].valueBoolean = false
* extension[+].url = "http://fhir.de/StructureDefinition/normgroesse"
* extension[=].valueCode = #N1
* code = $pzn-cs#06313728
* code.text = "Sumatriptan-1a Pharma 100 mg Tabletten"
* form = $KBV_CS_SFHIR_KBV_DARREICHUNGSFORM#TAB
* amount.numerator = $unitsofmeasure#{tbl} "TAB"
* amount.numerator.extension.url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_PackagingSize"
* amount.numerator.extension.valueString = "10"
* amount.denominator.value = 1