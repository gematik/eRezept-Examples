Instance: erp-diga-07-communication-to-patient
InstanceOf: GEM_ERP_PR_Communication_Reply
Usage: #example
* status = #unknown
* insert GKV_Identifier(recipient.identifier.value)
* basedOn = Reference(162.000.000.000.000.01)
* payload.contentString = "{\"version\": 1, \"supplyOptionsType\": \"onPremise\", \"info_text\": \"Die Anfrage zur Ausstellung eines Freischaltcodes für die DiGA wurde abgwiesen, da Sie nicht bei der Gematik-KK versichert sind.\"}"