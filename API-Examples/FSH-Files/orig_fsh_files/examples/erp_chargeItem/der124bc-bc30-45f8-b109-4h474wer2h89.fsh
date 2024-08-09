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
* code = $data-absent-reason#not-applicable
* subject.identifier.system = "http://fhir.de/sid/pkv/kvid-10"
* subject.identifier.value = "X110465770"
* subject.identifier.assigner.display = "Name einer privaten Krankenversicherung"
* enteredDate = "2021-06-01T07:13:00+05:00"
* supportingInformation.display = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_PR_Bundle"