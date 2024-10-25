Instance: erp-diga-05-response-accept
InstanceOf: Bundle
Usage: #example
* type = #collection
* timestamp = "2025-03-03T08:26:21.594+00:00"
* link.relation = "self"
* link.url = "https://erp-ref.zentral.erp.splitdns.ti-dienste.de/Task/162.000.000.000.000.01/$accept/"
* entry[0].fullUrl = "https://erp-ref.zentral.erp.splitdns.ti-dienste.de/Task/162.000.000.000.000.01"
* entry[=].resource = Inline-Instance-for-d5e04846-e753-4a91-ab60-9e4c6fb4b533-1
* entry[+].fullUrl = "urn:uuid:aed2e8ed-6dd6-4e94-80f4-3ab9e418513a"
* entry[=].resource = aed2e8ed-6dd6-4e94-80f4-3ab9e418513a

Instance: Inline-Instance-for-d5e04846-e753-4a91-ab60-9e4c6fb4b533-1
InstanceOf: GEM_ERP_PR_Task
Usage: #inline
* id = "162.000.000.000.000.01"
* insert DiGA_Task(ready)
* insert TaskSecret
* insert KTRTelematikID(owner.identifier.value)
* insert TaskInputQES(aed2e8ed-6dd6-4e94-80f4-3ab9e418513a)
