Instance: erp-chargeItem-05-GET-ChargeItem-Response
InstanceOf: Bundle
Usage: #example
* type = #collection
* timestamp = "2023-11-21T08:18:58.929+00:00"
* entry[0].fullUrl = "https://erp-ref.zentral.erp.splitdns.ti-dienste.de/ChargeItem/200.000.001.944.091.20"
* entry[=].resource = Inline-Instance-for-803bc98b-6ad6-4caa-81c1-893600ba4e4b-1
* entry[+].fullUrl = "urn:uuid:c81baa1d-0000-0000-0001-000000000000"
* entry[=].resource = 1ad84b2a-b444-430c-9902-de9e07547cc8
* entry[+].fullUrl = "urn:uuid:c81baa1d-0000-0000-0004-000000000000"
* entry[=].resource = 21e93051-7bce-43b5-9687-26b5b73c7c71

Instance: Inline-Instance-for-803bc98b-6ad6-4caa-81c1-893600ba4e4b-1
InstanceOf: ChargeItem
Usage: #inline
* id = "200.000.001.944.091.20"
* meta.profile = "https://gematik.de/fhir/erpchrg/StructureDefinition/GEM_ERPCHRG_PR_ChargeItem|1.0"
* identifier.system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* identifier.value = "200.000.001.944.091.20"
* status = #billable
* code = $data-absent-reason#not-applicable
* subject.identifier.system = "http://fhir.de/sid/pkv/kvid-10"
* subject.identifier.value = "X110465770"
* subject.identifier.assigner.display = "KOA Hamburg"
* enterer.identifier.system = "https://gematik.de/fhir/sid/telematik-id"
* enterer.identifier.value = "3-SMC-B-Testkarte-883110000116873"
* enteredDate = "2023-04-21T07:12:29.316+00:00"
* supportingInformation[0] = Reference(urn:uuid:c81baa1d-0000-0000-0001-000000000000) "https://fhir.kbv.de/StructureDefinition/KBV_PR_ERP_Bundle"
* supportingInformation[+] = Reference(urn:uuid:c81baa1d-0000-0000-0003-000000000000) "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_PR_Bundle"
* supportingInformation[+] = Reference(urn:uuid:c81baa1d-0000-0000-0004-000000000000) "http://fhir.abda.de/eRezeptAbgabedaten/StructureDefinition/DAV-PKV-PR-ERP-AbgabedatenBundle"

Instance: 1ad84b2a-b444-430c-9902-de9e07547cc8
InstanceOf: Bundle
Usage: #inline
* meta.profile = "https://fhir.kbv.de/StructureDefinition/KBV_PR_ERP_Bundle|1.1.0"
* meta.tag.display = "Dies ist ein Beispiel"
* type = #document
// Incomplete example

Instance: 21e93051-7bce-43b5-9687-26b5b73c7c71
InstanceOf: Bundle
Usage: #inline
* meta.lastUpdated = "2023-11-21T00:10:23.724+01:00"
* meta.profile = "http://fhir.abda.de/eRezeptAbgabedaten/StructureDefinition/DAV-PKV-PR-ERP-AbgabedatenBundle|1.3"
* meta.tag.display = "Dies ist ein Beispiel"
* type = #document
// Incomplete example