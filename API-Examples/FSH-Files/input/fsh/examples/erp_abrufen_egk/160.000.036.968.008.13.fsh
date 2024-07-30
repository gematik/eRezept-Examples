Instance: 160.000.036.968.008.13
InstanceOf: Task
Usage: #inline
* meta.profile = "https://gematik.de/fhir/StructureDefinition/ErxTask|1.1.1"
* extension[0].url = "https://gematik.de/fhir/StructureDefinition/PrescriptionType"
* extension[=].valueCoding = $Flowtype#160 "Muster 16 (Apothekenpflichtige Arzneimittel)"
* extension[+].url = "https://gematik.de/fhir/StructureDefinition/ExpiryDate"
* extension[=].valueDate = "2023-07-12"
* extension[+].url = "https://gematik.de/fhir/StructureDefinition/AcceptDate"
* extension[=].valueDate = "2023-05-10"
* identifier[0].use = #official
* identifier[=].system = "https://gematik.de/fhir/NamingSystem/PrescriptionID"
* identifier[=].value = "160.000.036.968.008.13"
* identifier[+].use = #official
* identifier[=].system = "https://gematik.de/fhir/NamingSystem/AccessCode"
* identifier[=].value = "16ba6a9a4440fbf815351fe7080572ab3ae9acbba404efa259074a56dac21725"
* status = #ready
* intent = #order
* for.identifier.system = "http://fhir.de/NamingSystem/gkv/kvid-10"
* for.identifier.value = "T046142499"
* authoredOn = "2023-04-12T06:42:30.913+00:00"
* lastModified = "2023-04-12T06:42:33.275+00:00"
* performerType = urn:ietf:rfc:3986#urn:oid:1.2.276.0.76.4.54 "Öffentliche Apotheke"
* performerType.text = "Öffentliche Apotheke"