Instance: cf042e44-086a-4d51-9c77-172f9a972e3b
InstanceOf: Organization
Usage: #inline
* meta.profile = "https://fhir.kbv.de/StructureDefinition/KBV_PR_FOR_Organization|1.0.3"
* identifier.type = $v2-0203#BSNR
* identifier.system = "https://fhir.kbv.de/NamingSystem/KBV_NS_Base_BSNR"
* identifier.value = "031234567"
* name = "Hausarztpraxis Dr. Topp-Glücklich"
* telecom.system = #phone
* telecom.value = "0301234567"
* address.type = #both
* address.line = "Musterstr. 2"
* address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=].valueString = "2"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=].valueString = "Musterstr."
* address.city = "Berlin"
* address.postalCode = "10623"