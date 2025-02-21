Instance: erp-fhir-infos-03-INVALID-fullUrl-format
InstanceOf: Bundle
Usage: #example
Title: "03-INVALID-fullUrl-format"
Description: "This example demonstrates a wrongly formatted fullUrl."
* insert DateTimeStamp(meta.lastUpdated)
* insert DateTimeStamp(timestamp)
* type = #collection
* entry[+].fullUrl = "www.pvs.praxis-topp-gluecklich.local/fhir/Patient/b0e22b86-e7e9-46c1-80fe-e6e24442d77c"
* entry[=].resource = erp-fhir-infos-Invalid-Example-Patient
* entry[+].fullUrl = "Patient/b0e22b86-e7e9-46c1-80fe-e6e24442d77c"
* entry[=].resource = erp-fhir-infos-Invalid-Example-Patient