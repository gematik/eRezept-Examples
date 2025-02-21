Instance: erp-diga-07-communication-to-patient-response
InstanceOf: GEM_ERP_PR_Communication_DiGA
Usage: #example
* status = #unknown
* insert DateTimeStamp(sent)
* insert GKV_Identifier(recipient.identifier)
* insert KTRTelematikID(sender.identifier)
* basedOn = Reference(162.000.000.000.000.01)
* payload.contentString = "Die Anfrage zur Ausstellung eines Freischaltcodes für die DiGA wurde abgwiesen, da Sie nicht bei der Gematik-KK versichert sind."