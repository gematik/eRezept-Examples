Instance: erp-communication-03-request-PostPharmacyToPatient
InstanceOf: Communication
Usage: #example
* insert PackageMetaProfile(StructureDefinition/GEM_ERP_PR_Communication_Reply)
* basedOn = Reference(160.000.000.000.000.01)
* status = #unknown
* recipient.identifier.system = "http://fhir.de/sid/gkv/kvid-10"
* recipient.identifier.value = "X234567890"
* payload.contentString = "{\"version\": 1, \"supplyOptionsType\": \"onPremise\", \"info_text\": \"Wir möchten Sie informieren, dass Ihre bestellten Medikamente zur Abholung bereitstehen. Den Abholcode finden Sie anbei.\", \"pickUpCodeHR\": \"12341234\", \"pickUpCodeDMC\": \"\", \"url\": \"\"}"