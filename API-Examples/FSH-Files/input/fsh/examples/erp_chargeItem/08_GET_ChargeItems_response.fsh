Instance: erp-chargeItem-08-GET-ChargeItems-Response
InstanceOf: Bundle
Usage: #example
* type = #searchset
* total = 2
* entry[0].fullUrl = "https://erp-ref.zentral.erp.splitdns.ti-dienste.de/200.000.000.000.000.01"
* entry[=].resource = 200.000.000.000.000.01-01
* entry[=].search.mode = #match
* entry[+].fullUrl = "https://erp-ref.zentral.erp.splitdns.ti-dienste.de/der124bc-bc30-45f8-b109-4h474wer2h89"
* entry[=].resource = der124bc-bc30-45f8-b109-4h474wer2h89

Instance: 200.000.000.000.000.01-01
InstanceOf: GEM_ERPCHRG_PR_ChargeItem
Usage: #inline
* insert ChargeItemWithAccessCode
* insert ChargeItemExtension
* supportingInformation[receiptBundle].display = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_PR_Bundle"

Instance: der124bc-bc30-45f8-b109-4h474wer2h89
InstanceOf: GEM_ERPCHRG_PR_ChargeItem
Usage: #inline
* insert ChargeItemWithAccessCode
* insert ChargeItemExtension
* identifier[PrescriptionID].value = "200.000.000.000.000.01"
* identifier[AccessCode].value = "888bea0e13cc9c42ceec14aec3ddee2263325dc2c6c699db115f58fe423607ea"
* supportingInformation[receiptBundle].display = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_PR_Bundle"