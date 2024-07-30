Instance: 9774f67f-a238-4daf-b4e6-679deeef3811
InstanceOf: Patient
Usage: #inline
* meta.profile = "https://fhir.kbv.de/StructureDefinition/KBV_PR_FOR_Patient|1.0.3"
* identifier.type = $identifier-type-de-basis#GKV
* identifier.system = "http://fhir.de/NamingSystem/gkv/kvid-10"
* identifier.value = "X234567890"
* name.use = #official
* name.family.extension.url = "http://hl7.org/fhir/StructureDefinition/humanname-own-name"
* name.family.extension.valueString = "Königsstein"
* name.family = "Ludger Königsstein"
* name.given = "Ludger"
* birthDate = "1935-06-22"
* address.type = #both
* address.line = "Musterstr. 1"
* address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=].valueString = "1"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=].valueString = "Musterstr."
* address.city = "Berlin"
* address.postalCode = "10623"