Instance: erp-chargeItem-05-GET-ChargeItem-Response
InstanceOf: Bundle
Usage: #example
* type = #collection
* timestamp = "2023-11-21T08:18:58.929+00:00"
* entry[0].fullUrl = "https://erp-ref.zentral.erp.splitdns.ti-dienste.de/ChargeItem/200.000.001.944.091.20"
* entry[=].resource = Inline-Instance-for-803bc98b-6ad6-4caa-81c1-893600ba4e4b-1
* entry[+].fullUrl = "urn:uuid:c81baa1d-0000-0000-0001-000000000000"
* entry[=].resource = erp-bereitstellen-02-Prescription-Bundle
* entry[+].fullUrl = "urn:uuid:c81baa1d-0000-0000-0003-000000000000"
* entry[=].resource = erp-chargeitem-example-quittung
* entry[+].fullUrl = "urn:uuid:c81baa1d-0000-0000-0004-000000000000"
* entry[=].resource = erp-chargeitem-example-abgabedatenPKV

Instance: Inline-Instance-for-803bc98b-6ad6-4caa-81c1-893600ba4e4b-1
InstanceOf: ChargeItem
Usage: #inline
* id = "200.000.001.944.091.20"
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
* enteredDate = "2023-04-21T07:12:29.316+00:00"
* supportingInformation[0] = Reference(urn:uuid:c81baa1d-0000-0000-0001-000000000000) "https://fhir.kbv.de/StructureDefinition/KBV_PR_ERP_Bundle"
* supportingInformation[+] = Reference(urn:uuid:c81baa1d-0000-0000-0003-000000000000) "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_PR_Bundle"
* supportingInformation[+] = Reference(urn:uuid:c81baa1d-0000-0000-0004-000000000000) "http://fhir.abda.de/eRezeptAbgabedaten/StructureDefinition/DAV-PKV-PR-ERP-AbgabedatenBundle"
