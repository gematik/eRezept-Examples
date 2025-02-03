Instance: erp-fhir-infos-01-INVALID-fullUrl-and-id-missmatch
InstanceOf: Bundle
Usage: #example
Title: "01-INVALID-fullUrl-and-id-missmatch"
Description: "This example demonstrates mismatch between id in fullUrl and id in the resource."
* insert DateTimeStamp(meta.lastUpdated)
* insert DateTimeStamp(timestamp)
* type = #collection
* entry[+].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/Patient/b0e22b86-e7e9-46c1-80fe-e6e24442d77c"
* entry[+].resource = Invalid-Example-Patient

Instance: erp-fhir-infos-Invalid-Example-Patient
InstanceOf: KBV_PR_FOR_Patient
Usage: #inline
* id = "43ed0c32-27e0-429c-a2fb-8f92518de721"
* identifier[versichertenId_GKV].value = "X234567890"
* name[name]
  * .use = #official
  * family.extension[nachname].valueString = "Königsstein"
  * family = "Ludger Königsstein"
  * given = "Ludger"
* birthDate = "1935-06-22"
* address[Strassenanschrift]
  * type = #both
  * line = "Musterstr. 1"
  * line.extension[Hausnummer].valueString = "1"
  * line.extension[Strasse].valueString = "Musterstr."
  * city = "Berlin"
  * postalCode = "10623"