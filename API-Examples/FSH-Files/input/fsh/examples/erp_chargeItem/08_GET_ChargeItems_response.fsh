Instance: erp-chargeItem-08-GET-ChargeItems-response
InstanceOf: Bundle
Usage: #example
* meta.lastUpdated = "2021-09-02T11:38:42.557+00:00"
* type = #searchset
* total = 2
* entry[0].fullUrl = "http://hapi.fhir.org/baseR4/ChargeItem/200.000.001.944.091.20"
* entry[=].resource = 200.000.001.944.091.20
* entry[=].search.mode = #match
* entry[+].fullUrl = "http://hapi.fhir.org/baseR4/ChargeItem/der124bc-bc30-45f8-b109-4h474wer2h89"
* entry[=].resource = der124bc-bc30-45f8-b109-4h474wer2h89

Instance: 200.000.001.944.091.20
InstanceOf: ChargeItem
Usage: #inline
* meta.lastUpdated = "2023-07-21T11:36:19.491+00:00"
* meta.profile = "https://gematik.de/fhir/erpchrg/StructureDefinition/GEM_ERPCHRG_PR_ChargeItem|1.0"
* extension.url = "https://gematik.de/fhir/erpchrg/StructureDefinition/GEM_ERPCHRG_EX_MarkingFlag"
* extension.extension[0].url = "insuranceProvider"
* extension.extension[=].valueBoolean = true
* extension.extension[+].url = "subsidy"
* extension.extension[=].valueBoolean = false
* extension.extension[+].url = "taxOffice"
* extension.extension[=].valueBoolean = true
* identifier[0].system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* identifier[=].value = "200.000.001.944.091.20"
* identifier[+].system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_AccessCode"
* identifier[=].value = "555bjf73jr8d9si2ceec14aec3ddee2263325dc2c6c699db115f58fe423607ea"
* status = #billable
* code = $data-absent-reason#not-applicable
* subject.identifier.system = "http://fhir.de/sid/gkv/kvid-10"
* subject.identifier.value = "X110465770"
* enterer.identifier.system = "https://gematik.de/fhir/sid/telematik-id"
* enterer.identifier.value = "3-SMC-B-Testkarte-883110000116873"
* enteredDate = "2023-07-21T07:12:29.316+00:00"
* supportingInformation[0] = Reference(urn:uuid:c81baa1d-0000-0000-0001-000000000000) "https://fhir.kbv.de/StructureDefinition/KBV_PR_ERP_Bundle"
* supportingInformation[+] = Reference(urn:uuid:c81baa1d-0000-0000-0004-000000000000) "http://fhir.abda.de/eRezeptAbgabedaten/StructureDefinition/DAV-PKV-PR-ERP-AbgabedatenBundle"
* supportingInformation[+] = Reference(urn:uuid:c81baa1d-0000-0000-0003-000000000000) "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_PR_Bundle"

Instance: der124bc-bc30-45f8-b109-4h474wer2h89
InstanceOf: ChargeItem
Usage: #inline
* meta.profile = "https://gematik.de/fhir/erpchrg/StructureDefinition/GEM_ERPCHRG_PR_ChargeItem|1.0"
* status = #billable
* extension.url = "https://gematik.de/fhir/erpchrg/StructureDefinition/GEM_ERPCHRG_EX_MarkingFlag"
* extension.extension[0].url = "insuranceProvider"
* extension.extension[=].valueBoolean = false
* extension.extension[+].url = "subsidy"
* extension.extension[=].valueBoolean = false
* extension.extension[+].url = "taxOffice"
* extension.extension[=].valueBoolean = false
* identifier[0].system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* identifier[=].value = "200.086.824.605.539.20"
* identifier[+].system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_AccessCode"
* identifier[=].value = "888bea0e13cc9c42ceec14aec3ddee2263325dc2c6c699db115f58fe423607ea"
* code = $data-absent-reason-cs#not-applicable
* subject.identifier.system = "http://fhir.de/sid/gkv/kvid-10"
* subject.identifier.value = "X110465770"
* subject.identifier.assigner.display = "Name einer privaten Krankenversicherung"
* enteredDate = "2021-06-01T07:13:00+05:00"
* supportingInformation.display = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_PR_Bundle"