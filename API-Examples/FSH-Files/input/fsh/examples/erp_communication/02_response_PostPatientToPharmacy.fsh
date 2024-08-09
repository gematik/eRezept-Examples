Instance: erp-communication-02-response-PostPatientToPharmacy
InstanceOf: Communication
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2020-03-12T18:01:10+00:00"
* meta.profile = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_PR_Communication_InfoReq|1.3"
* contained = 5fe6e06c-8725-46d5-aecd-e65e041ca3de
* basedOn = Reference(160.123.456.789.123.58)
* status = #unknown
* sent = "2020-03-12T18:01:10+00:00"
* about = Reference(5fe6e06c-8725-46d5-aecd-e65e041ca3de)
* recipient.identifier.system = "https://gematik.de/fhir/sid/telematik-id"
* recipient.identifier.value = "3-1.54.10123404"
* sender.identifier.system = "http://fhir.de/sid/gkv/kvid-10"
* sender.identifier.value = "X234567890"
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