Instance: authentisieren-07-response-InnerVau
InstanceOf: Bundle
Usage: #example
* meta.lastUpdated = "2020-03-01T07:02:37.836+00:00"
* type = #searchset
* total = 2
* link.relation = "self"
* link.url = "https://erp.zentral.erp.splitdns.ti-dienste.de/Task/"
* entry.fullUrl = "https://erp.zentral.erp.splitdns.ti-dienste.de/Task/Example-Task"
* entry.resource = Example-Task
* entry.search.mode = #match

Instance: Example-Task
InstanceOf: GEM_ERP_PR_Task
Usage: #inline
* insert Task160Exension
* insert Task160Identifier
* status = #in-progress
* intent = #order
* for.identifier.system = "http://fhir.de/sid/gkv/kvid-10"
* for.identifier.value = "X123456789"
* insert DateTime(authoredOn)
* insert DateTimeStamp(lastModified)
* performerType = $GEM_ERP_CS_OrganizationType#urn:oid:1.2.276.0.76.4.54 "Öffentliche Apotheke"
* input[ePrescription].type = $GEM_ERP_CS_DocumentType#1 "Health Care Provider Prescription"
* input[ePrescription].valueReference = Reference(urn:uuid:bdf8eb87-f55f-47b9-9bc5-a279cf136266)