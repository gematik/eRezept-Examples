Instance: erp-chargeItem-04-POST-ChargeItem-Response
InstanceOf: ChargeItem
Usage: #example
* id = "200.000.001.944.091.20-1"
* meta.id = "ChargeItem-erp-chargeItem-04-POST-ChargeItem-Response"
* meta.profile = "https://gematik.de/fhir/erpchrg/StructureDefinition/GEM_ERPCHRG_PR_ChargeItem|1.0"
* identifier.system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* identifier.value = "200.000.001.944.091.20"
* status = #billable
* code = $data-absent-reason-cs#not-applicable
* subject.identifier.system = "http://fhir.de/sid/gkv/kvid-10"
* subject.identifier.value = "X110465770"
* subject.identifier.assigner.display = "KOA Hamburg"
* enterer.identifier.system = "https://gematik.de/fhir/sid/telematik-id"
* enterer.identifier.value = "3-SMC-B-Testkarte-883110000116873"
* enteredDate = "2023-07-21T07:12:29.316+00:00"
* supportingInformation[0] = Reference(urn:uuid:c81baa1d-0000-0000-0001-000000000000) "https://fhir.kbv.de/StructureDefinition/KBV_PR_ERP_Bundle"
* supportingInformation[+] = Reference(urn:uuid:c81baa1d-0000-0000-0003-000000000000) "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_PR_Bundle"
* supportingInformation[+] = Reference(urn:uuid:c81baa1d-0000-0000-0004-000000000000) "http://fhir.abda.de/eRezeptAbgabedaten/StructureDefinition/DAV-PKV-PR-ERP-AbgabedatenBundle"