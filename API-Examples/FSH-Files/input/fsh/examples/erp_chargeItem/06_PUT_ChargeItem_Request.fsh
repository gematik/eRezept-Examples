Instance: erp-chargeItem-06-PUT-ChargeItem-Request
InstanceOf: ChargeItem
Usage: #example
* meta.profile = "https://gematik.de/fhir/erpchrg/StructureDefinition/GEM_ERPCHRG_PR_ChargeItem|1.0"
* contained = f1909de6-7d21-443b-a2ae-230b9cb62f70
* identifier[0].system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_AccessCode"
* identifier[=].value = "d343b6e03c1c032be404770c8e743d2f64026a9e3ebf42787987f88f1b06db41"
* identifier[+].system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* identifier[=].value = "200.000.001.944.091.20"
* status = #billable
* code = $data-absent-reason#not-applicable
* subject.identifier.system = "http://fhir.de/sid/pkv/kvid-10"
* subject.identifier.value = "X110465770"
* enterer.identifier.system = "https://gematik.de/fhir/sid/telematik-id"
* enterer.identifier.value = "3-SMC-B-Testkarte-883110000116873"
* enteredDate = "2023-04-21T07:12:29.316+00:00"
* supportingInformation[0] = Reference(urn:uuid:c81baa1d-0000-0000-0001-000000000000) "https://fhir.kbv.de/StructureDefinition/KBV_PR_ERP_Bundle"
* supportingInformation[+] = Reference(urn:uuid:c81baa1d-0000-0000-0003-000000000000) "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_PR_Bundle"
* supportingInformation[+] = Reference(f1909de6-7d21-443b-a2ae-230b9cb62f70) "Binary"

Instance: f1909de6-7d21-443b-a2ae-230b9cb62f70
InstanceOf: Binary
Usage: #inline
* contentType = #application/pkcs7-mime
* data = "RGllcyBpc3QgZWluIEJlaXNwaWVs"