Instance: erp-eprescription-04-POST-AccessCode-EU-Response
InstanceOf: GEM_ERPEU_PR_PAR_Access_Authorization_Response
Usage: #example
* parameter[countryCode].valueCoding.code = #BE
* parameter[accessCode].valueIdentifier.value = "ABC123"
* insert DateTimeStamp(parameter[createdAt].valueInstant)
* insert DateTimeStampPlus1hr(parameter[validUntil].valueInstant)
