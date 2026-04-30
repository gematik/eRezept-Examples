Instance: erp-communication-03-request-PostPharmacyToPatient
InstanceOf: GEM_ERP_PR_Communication_Reply
Usage: #example
* status = #unknown
* insert GKV_Identifier(recipient.identifier)
* basedOn = Reference(160.000.000.000.000.01)
* payload.contentString = "{\"version\": 3, \"communicationType\": \"pickupCodeHR\", \"text\": \"Wir möchten Sie informieren, dass Ihre bestellten Medikamente zur Abholung bereitstehen. Den Abholcode finden Sie anbei.\", \"pickupCodeHR\": \"12341234\", \"transactionID\": \"ABCD-EFGH-IJKL-MNOP\"}"