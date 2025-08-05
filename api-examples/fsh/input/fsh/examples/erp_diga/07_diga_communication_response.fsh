Instance: erp-diga-07-communication-to-patient-response
InstanceOf: GEM_ERP_PR_Communication_Reply
Usage: #example
* status = #unknown
* insert DateTimeStamp(sent)
* insert GKV_Identifier(recipient.identifier.value)
* insert KTRTelematikID(sender.identifier)
* basedOn = Reference(162.000.000.000.000.01)
* payload.contentString = "{\"version\": 1, \"supplyOptionsType\": \"delivery\", \"info_text\": \"Die Anfrage zur Ausstellung eines Freischaltcodes für die DiGA wurde abgwiesen, da Sie nicht bei der Gematik-KK versichert sind.\"}"