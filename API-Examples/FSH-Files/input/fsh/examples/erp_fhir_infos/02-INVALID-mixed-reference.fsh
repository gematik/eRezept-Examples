Instance: erp-fhir-infos-02-INVALID-mixed-reference
InstanceOf: Bundle
Usage: #example
Title: "02-INVALID-mixed-reference"
Description: "This example demonstrates a wrong mixed reference."
* insert DateTimeStamp(meta.lastUpdated)
* insert DateTimeStamp(timestamp)
* type = #document
* entry[+].fullUrl = "urn:uuid:b0e22b86-e7e9-46c1-80fe-e6e24442d77c"
* entry[+].resource = Invalid-Example-Composition

Instance: Invalid-Example-Composition
InstanceOf: KBV_PR_ERP_Composition
Usage: #inline
* id = "b0e22b86-e7e9-46c1-80fe-e6e24442d77c"
* subject = Reference(Patient/17b0721b-d538-4455-b1bb-2c2dfc19d234)
* insert DateTimeStamp(date)
* author[Arzt] = Reference(Practitioner/407974ea-b5c7-47e5-be09-9310a00afb31)
* author[Pruefnummer].identifier.value = "Y/400/1910/36/346"
* custodian = Reference(Organization/94662b9e-af55-4206-b52a-7e086d0d4d82)
* section[Verordnung_Arzneimittel].entry = Reference(4e8c932a-bef5-443d-9e85-64bca6d53d53)
* section[Krankenversicherungsverhaeltnis].entry = Reference(a2ef1193-0739-46de-bc77-65f13feaa7d3)