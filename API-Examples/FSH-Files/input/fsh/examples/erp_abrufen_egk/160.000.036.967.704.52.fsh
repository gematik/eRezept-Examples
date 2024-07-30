Instance: 160.000.036.967.704.52
InstanceOf: Task
Usage: #inline
* meta.profile = "https://gematik.de/fhir/StructureDefinition/ErxTask|1.1.1"
* extension[0].url = "https://gematik.de/fhir/StructureDefinition/PrescriptionType"
* extension[=].valueCoding = $Flowtype#160 "Muster 16 (Apothekenpflichtige Arzneimittel)"
* extension[+].url = "https://gematik.de/fhir/StructureDefinition/ExpiryDate"
* extension[=].valueDate = "2023-07-11"
* extension[+].url = "https://gematik.de/fhir/StructureDefinition/AcceptDate"
* extension[=].valueDate = "2023-05-09"
* identifier[0].use = #official
* identifier[=].system = "https://gematik.de/fhir/NamingSystem/PrescriptionID"
* identifier[=].value = "160.000.036.967.704.52"
* identifier[+].use = #official
* identifier[=].system = "https://gematik.de/fhir/NamingSystem/AccessCode"
* identifier[=].value = "eb6002c60dffdfb742002bf44f9f72326de3dddfe2271ab64a21a6cb0f168bbf"
* status = #ready
* intent = #order
* for.identifier.system = "http://fhir.de/NamingSystem/gkv/kvid-10"
* for.identifier.value = "T046142499"
* authoredOn = "2023-04-11T09:10:16.519+00:00"
* lastModified = "2023-04-11T09:10:18.926+00:00"
* performerType = urn:ietf:rfc:3986#urn:oid:1.2.276.0.76.4.54 "Öffentliche Apotheke"
* performerType.text = "Öffentliche Apotheke"