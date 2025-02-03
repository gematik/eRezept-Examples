Instance: erp-fhir-infos-05-INVALID-oid-format
InstanceOf: Bundle
Usage: #example
Title: "05-INVALID-oid-format"
Description: "This example demonstrates a forbidden oid reference"
* insert DateTimeStamp(meta.lastUpdated)
* insert DateTimeStamp(timestamp)
* type = #collection
* entry[+].fullUrl = "urn:oid:1.3.6.1.4.1.12345.1.1.1"
* entry[+].resource = erp-fhir-infos-Invalid-Example-Patient