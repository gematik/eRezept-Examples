Instance: erp-communication-04-response-PostPharmacyToPatient
InstanceOf: GEM_ERP_PR_Communication_Reply
Usage: #example
* status = #unknown
* insert DateTimeStamp(sent)
* insert GKV_Identifier(recipient.identifier.value)
* insert ApoTelematikID(sender.identifier)
* basedOn = Reference(160.000.000.000.000.01)
* payload.contentString = "{\"version\": 1,\"supplyOptionsType\": \"onPremise\",\"info_text\": \"Hallo, wir haben das Medikament vorraetig. Kommen Sie gern in die Filiale oder wir schicken einen Boten.\",\"url\": \"https://sonnenschein-apotheke.de\"}"