Instance: erp-diga-05-response-accept
InstanceOf: Bundle
Usage: #example
* type = #collection
* timestamp = "2025-03-03T08:26:21.594+00:00"
* link.relation = "self"
* link.url = "https://erp-ref.zentral.erp.splitdns.ti-dienste.de/Task/162.123.456.789.123.58/$accept/"
* entry[0].fullUrl = "https://erp-ref.zentral.erp.splitdns.ti-dienste.de/Task/162.123.456.789.123.58"
* entry[=].resource = Inline-Instance-for-d5e04846-e753-4a91-ab60-9e4c6fb4b533-1
* entry[+].fullUrl = "urn:uuid:example-binary-b2f2-c5a408b82035"
* entry[=].resource = example-binary-b2f2-c5a408b82035

Instance: Inline-Instance-for-d5e04846-e753-4a91-ab60-9e4c6fb4b533-1
InstanceOf: GEM_ERP_PR_Task
Usage: #inline
* id = "162.123.456.789.123.58"
* insert DiGA_Task(ready)
* insert TaskSecret
* insert KTRTelematikID(owner.identifier.value)
* insert TaskInputQES(example-binary-b2f2-c5a408b82035)
