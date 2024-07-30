Instance: erp-communication-06-response-RezeptZuweisen
InstanceOf: Communication
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2020-03-12T18:01:10+00:00"
* meta.profile = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_PR_Communication_DispReq|1.3"
* sent = "2020-03-12T18:01:10+00:00"
* basedOn = Reference(Task/160.123.456.789.123.58/$accept?ac=777bea0e13cc9c42ceec14aec3ddee2263325dc2c6c699db115f58fe423607ea)
* status = #unknown
* recipient.identifier.system = "https://gematik.de/fhir/sid/telematik-id"
* recipient.identifier.value = "3-1.54.10123404"
* sender.identifier.system = "http://fhir.de/sid/gkv/kvid-10"
* sender.identifier.value = "X234567890"
* payload.contentString = "{ \"version\": 1, \"supplyOptionsType\": \"delivery\", \"name\": \"Dr. Maximilian von Muster\", \"address\": [ \"wohnhaft bei Emilia Fischer\", \"Bundesallee 312\", \"123. OG\", \"12345 Berlin\" ], \"hint\": \"Bitte im Morsecode klingeln: -.-.\", \"phone\": \"004916094858168\" }"