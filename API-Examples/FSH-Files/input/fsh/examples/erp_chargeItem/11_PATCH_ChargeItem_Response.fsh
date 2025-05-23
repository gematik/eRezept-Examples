Instance: erp-chargeItem-11-PATCH-ChargeItem-Response
InstanceOf: GEM_ERPCHRG_PR_ChargeItem
Usage: #example
* id = "200.000.000.000.000.01-6"
* meta.id = "ChargeItem-erp-chargeItem-11-PATCH-ChargeItem-Response"
* insert ChargeItem
// Change after PUT Request
* extension[markingFlag]
  * extension[insuranceProvider].valueBoolean = false
  * extension[subsidy].valueBoolean = false
  * extension[taxOffice].valueBoolean = true
* supportingInformation[prescriptionItemBundle] = Reference(urn:uuid:d9a98ce4-9585-4031-ba85-3719bf0fc14a)
* supportingInformation[dispenseItemBundle] = Reference(urn:uuid:f1909de6-7d21-443b-a2ae-230b9cb62f70-1)
* supportingInformation[receiptBundle] = Reference(urn:uuid:d45fa5b0-7b01-457f-a41f-b1ea28982963)