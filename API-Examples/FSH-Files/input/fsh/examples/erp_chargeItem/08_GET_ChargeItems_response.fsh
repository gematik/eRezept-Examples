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
* supportingInformation[prescriptionItemBundle] = Reference(urn:uuid:d9a98ce4-9585-4031-ba85-3719bf0fc14a)
* supportingInformation[dispenseItemBundle] = Reference(urn:uuid:f1909de6-7d21-443b-a2ae-230b9cb62f70-1)
* supportingInformation[receiptBundle] = Reference(urn:uuid:d45fa5b0-7b01-457f-a41f-b1ea28982963)

Instance: der124bc-bc30-45f8-b109-4h474wer2h89
InstanceOf: GEM_ERPCHRG_PR_ChargeItem
Usage: #inline
* insert ChargeItemWithAccessCode
* insert ChargeItemExtension
* identifier[PrescriptionID].value = "200.000.000.000.000.01"
* identifier[AccessCode].value = "888bea0e13cc9c42ceec14aec3ddee2263325dc2c6c699db115f58fe423607ea"
* supportingInformation[prescriptionItemBundle] = Reference(urn:uuid:d4bbd88a-4ce3-43bd-81d5-33fb4e4bf450)
* supportingInformation[dispenseItemBundle] = Reference(urn:uuid:f75de6f7-4505-4395-870f-3ca8176d7622)
* supportingInformation[receiptBundle] = Reference(urn:uuid:9d9bdee8-b36a-490d-9289-2b7022e330b9)