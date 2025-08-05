Instance: erp-chargeItem-10-patch-chargeitem-request
InstanceOf: Parameters
Usage: #example
* parameter[0].name = "operation"
* parameter[=].part[0].name = "type"
* parameter[=].part[=].valueCode = #add
* parameter[=].part[+].name = "path"
* parameter[=].part[=].valueString = "ChargeItem.extension('https://gematik.de/fhir/erpchrg/StructureDefinition/GEM_ERPCHRG_EX_MarkingFlag').extension('taxOffice')"
* parameter[=].part[+].name = "name"
* parameter[=].part[=].valueString = "valueBoolean"
* parameter[=].part[+].name = "value"
* parameter[=].part[=].valueBoolean = true
* parameter[+].name = "operation"
* parameter[=].part[0].name = "type"
* parameter[=].part[=].valueCode = #add
* parameter[=].part[+].name = "path"
* parameter[=].part[=].valueString = "ChargeItem.extension('https://gematik.de/fhir/erpchrg/StructureDefinition/GEM_ERPCHRG_EX_MarkingFlag').extension('insuranceProvider')"
* parameter[=].part[+].name = "name"
* parameter[=].part[=].valueString = "valueBoolean"
* parameter[=].part[+].name = "value"
* parameter[=].part[=].valueBoolean = false