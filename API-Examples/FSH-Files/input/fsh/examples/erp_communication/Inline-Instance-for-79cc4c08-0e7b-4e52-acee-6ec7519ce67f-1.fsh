Instance: Inline-Instance-for-79cc4c08-0e7b-4e52-acee-6ec7519ce67f-1
InstanceOf: Communication
Usage: #inline
* id = "12346"
* meta.versionId = "1"
* meta.lastUpdated = "2020-03-12T18:15:10+00:00"
* meta.profile = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_PR_Communication_Reply|1.3"
* basedOn = Reference(Task/160.000.226.119.741.52)
* status = #unknown
* sent = "2020-03-12T18:01:10+00:00"
* recipient.identifier.system = "http://fhir.de/sid/gkv/kvid-10"
* recipient.identifier.value = "X234567890"
* sender.identifier.system = "https://gematik.de/fhir/sid/telematik-id"
* sender.identifier.value = "3-1.54.10123404"
* payload.extension[0].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_SupplyOptionsType"
* payload.extension[=].extension[0].url = "onPremise"
* payload.extension[=].extension[=].valueBoolean = true
* payload.extension[=].extension[+].url = "delivery"
* payload.extension[=].extension[=].valueBoolean = true
* payload.extension[=].extension[+].url = "shipment"
* payload.extension[=].extension[=].valueBoolean = true
* payload.extension[+].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_AvailabilityState"
* payload.extension[=].valueCoding = $GEM_ERP_CS_AvailabilityStatus#10
* payload.contentString = "{ \"version\": 1, \"supplyOptionsType\": \"onPremise\",\"info_text\": \"Wir möchten Sie informieren, dass Ihre bestellten Medikamente zur Abholung bereitstehen. Den Abholcode finden Sie anbei.\", \"pickUpCodeHR\": \"12341234\", \"pickUpCodeDMC\": \"\", \"url\": \"\" }"