Instance: erp-communication-03-request-PostPharmacyToPatient
InstanceOf: GEM_ERP_PR_Communication_Reply
Usage: #example
* status = #unknown
* insert GKV_Identifier(recipient.identifier.value)
* basedOn = Reference(160.000.000.000.000.01)
* payload.contentString = "{\"version\": 1, \"supplyOptionsType\": \"onPremise\", \"info_text\": \"Wir möchten Sie informieren, dass Ihre bestellten Medikamente zur Abholung bereitstehen. Den Abholcode finden Sie anbei.\", \"pickUpCodeHR\": \"12341234\", \"pickUpCodeDMC\": \"\", \"url\": \"\"}"