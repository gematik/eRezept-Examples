Instance: erp-communication-04-response-PostPharmacyToPatient
InstanceOf: GEM_ERP_PR_Communication_Reply
Usage: #example
* status = #unknown
* insert DateTimeStamp(sent)
* insert GKV_Identifier(recipient.identifier)
* insert ApoTelematikID(sender.identifier)
* basedOn = Reference(160.000.000.000.000.01)
* payload.contentString = "{\"version\": 3, \"communicationType\": \"pickupCodeHR\", \"text\": \"Wir möchten Sie informieren, dass Ihre bestellten Medikamente zur Abholung bereitstehen. Den Abholcode finden Sie anbei.\", \"pickupCodeHR\": \"12341234\", \"transactionID\": \"ABCD-EFGH-IJKL-MNOP\"}"