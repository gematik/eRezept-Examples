Instance: erp-communication-03-request-PostPharmacyToPatient
InstanceOf: Communication
Usage: #example
* meta.profile = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_PR_Communication_Reply|{{profileVersion}}"
* basedOn = Reference(160.123.456.789.123.58)
* status = #unknown
* recipient.identifier.system = "http://fhir.de/sid/gkv/kvid-10"
* recipient.identifier.value = "X234567890"
* payload.contentString = "{\"version\": 1, \"supplyOptionsType\": \"onPremise\", \"info_text\": \"Wir möchten Sie informieren, dass Ihre bestellten Medikamente zur Abholung bereitstehen. Den Abholcode finden Sie anbei.\", \"pickUpCodeHR\": \"12341234\", \"pickUpCodeDMC\": \"\", \"url\": \"\"}"