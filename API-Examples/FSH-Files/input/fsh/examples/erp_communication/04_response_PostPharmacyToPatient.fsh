Instance: erp-communication-04-response-PostPharmacyToPatient
InstanceOf: Communication
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2020-03-12T18:01:10+00:00"
* meta.profile = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_PR_Communication_Reply|1.3"
* basedOn = Reference(160.123.456.789.123.58)
* status = #unknown
* sent = "2020-03-12T18:01:10+00:00"
* recipient.identifier.system = "http://fhir.de/sid/gkv/kvid-10"
* recipient.identifier.value = "X234567890"
* sender.identifier.system = "https://gematik.de/fhir/sid/telematik-id"
* sender.identifier.value = "606358757"
* payload.contentString = "{\"version\": 1,\"supplyOptionsType\": \"onPremise\",\"info_text\": \"Hallo, wir haben das Medikament vorraetig. Kommen Sie gern in die Filiale oder wir schicken einen Boten.\",\"url\": \"https://sonnenschein-apotheke.de\"}"