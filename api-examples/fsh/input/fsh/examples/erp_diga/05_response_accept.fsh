Instance: erp-diga-05-response-accept
InstanceOf: Bundle
Usage: #example
* type = #collection
* insert DateTimeStamp(timestamp)
* link.relation = "self"
* link.url = "https://erp-ref.zentral.erp.splitdns.ti-dienste.de/Task/162.000.000.000.000.01/$accept/"
* entry[0].fullUrl = "https://erp-ref.zentral.erp.splitdns.ti-dienste.de/Task/162.000.000.000.000.01"
* entry[=].resource = Inline-Instance-for-d5e04846-e753-4a91-ab60-9e4c6fb4b533-1
* entry[+].fullUrl = "urn:uuid:ChargeItem-Abgabedaten-Binary"
* entry[=].resource = ChargeItem-Abgabedaten-Binary

Instance: Inline-Instance-for-d5e04846-e753-4a91-ab60-9e4c6fb4b533-1
InstanceOf: GEM_ERP_PR_Task
Usage: #inline
* id = "162.000.000.000.000.01"
* insert DiGA_Task(ready)
* insert TaskSecret
* insert KTRTelematikID(owner.identifier)
* insert TaskInputQES(ChargeItem-Abgabedaten-Binary)
