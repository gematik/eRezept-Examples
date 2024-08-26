Instance: erp-communication-08-response-GetAllMessages
InstanceOf: Bundle
Usage: #example
* meta.lastUpdated = "2020-04-13T07:11:18.245+00:00"
* type = #searchset
* total = 391
* link[0].relation = "self"
* link[=].url = "https://erp.zentral.erp.splitdns.ti-dienste.de/Communication?_format=html%2Fxml&_sort=sent&sent=gt2020-04-01&sent=lt2020-04-30"
* link[+].relation = "next"
* link[=].url = "https://erp.zentral.erp.splitdns.ti-dienste.de?_getpages=48829c84-7ad7-4834-8362-2c2c109379b1&_getpagesoffset=50&_count=50&_bundletype=searchset"
* entry.fullUrl = "https://erp.zentral.erp.splitdns.ti-dienste.de/Communication/74671"
* entry.resource = 74671
* entry.search.mode = #match

Instance: 74671
InstanceOf: Communication
Usage: #inline
* meta.versionId = "1"
* meta.lastUpdated = "2020-04-12T18:01:10+00:00"
* meta.source = "#H8gavJ2v535x6V3f"
* insert PackageMetaProfile(StructureDefinition/GEM_ERP_PR_Communication_InfoReq)
* contained.resourceType = "Medication"
* contained.id = "5fe6e06c-8725-46d5-aecd-e65e041ca3de"
* contained.meta.profile = "https://fhir.kbv.de/StructureDefinition/KBV_PR_ERP_Medication_PZN|1.1.0"
* contained.extension[0].url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_Category"
* contained.extension[=].valueCoding = $KBV_CS_ERP_Medication_Category#00
* contained.extension[+].url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_Vaccine"
* contained.extension[=].valueBoolean = false
* contained.extension[+].url = "http://fhir.de/StructureDefinition/normgroesse"
* contained.extension[=].valueCode = #N1
* contained.code = $pzn#06313728
* contained.code.text = "Sumatriptan-1a Pharma 100 mg Tabletten"
* contained.form = $KBV_CS_SFHIR_KBV_DARREICHUNGSFORM#TAB
* contained.amount.numerator = 12 '{tbl}' "TAB"
* contained.amount.denominator.value = 1
* status = #unknown
* about = Reference(5fe6e06c-8725-46d5-aecd-e65e041ca3de)
* sent = "2020-04-12T18:01:10+00:00"
* received = "2020-04-12T18:02:10+00:00"
* recipient.identifier.system = "https://gematik.de/fhir/sid/telematik-id"
* recipient.identifier.value = "3-1.54.10123404"
* sender.identifier.system = "http://fhir.de/sid/gkv/kvid-10"
* sender.identifier.value = "X234567890"
* payload.extension[0].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_InsuranceProvider"
* payload.extension[=].valueIdentifier.system = "http://fhir.de/sid/arge-ik/iknr"
* payload.extension[=].valueIdentifier.value = "104212059"
* payload.extension[+].extension[0].url = "onPremise"
* payload.extension[=].extension[=].valueBoolean = true
* payload.extension[=].extension[+].url = "delivery"
* payload.extension[=].extension[=].valueBoolean = true
* payload.extension[=].extension[+].url = "shipment"
* payload.extension[=].extension[=].valueBoolean = false
* payload.extension[=].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_SupplyOptionsType"
* payload.extension[+].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_SubstitutionAllowedType"
* payload.extension[=].valueBoolean = true
* payload.extension[+].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_PrescriptionType"
* payload.extension[=].valueCoding = $GEM_ERP_CS_FlowType#160 "Muster 16 (Apothekenpflichtige Arzneimittel)"
* payload.contentString = "Hallo, ich wollte gern fragen, ob das Medikament bei Ihnen vorraetig ist."