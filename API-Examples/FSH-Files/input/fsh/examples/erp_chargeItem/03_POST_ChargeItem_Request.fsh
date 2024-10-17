Instance: erp-chargeItem-03-POST-ChargeItem-Request
InstanceOf: ChargeItem
Usage: #example
* id = "200.000.001.944.091.20"
* meta.id = "ChargeItem-erp-chargeItem-03-POST-ChargeItem-Request"
* meta.profile = "https://gematik.de/fhir/erpchrg/StructureDefinition/GEM_ERPCHRG_PR_ChargeItem|1.0"
* contained = Abg123
* identifier.system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* identifier.value = "200.000.001.944.091.20"
* status = #billable
* code = $data-absent-reason-cs#not-applicable
* subject.identifier.system = "http://fhir.de/sid/gkv/kvid-10"
* subject.identifier.value = "X110465770"
* subject.identifier.assigner.display = "KOA Hamburg"
* enterer.identifier.system = "https://gematik.de/fhir/sid/telematik-id"
* enterer.identifier.value = "3-SMC-B-Testkarte-883110000116873"
* enteredDate = "2023-07-21T09:12:28+02:00"
* supportingInformation = Reference(Abg123) "Binary"

Instance: Abg123
InstanceOf: Binary
Usage: #inline
* contentType = #application/pkcs7-mime
* data = "RGllcyBpc3QgZWluIEJlaXNwaWVs"