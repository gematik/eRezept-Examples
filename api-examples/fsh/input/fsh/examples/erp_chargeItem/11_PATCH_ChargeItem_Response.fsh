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
* supportingInformation[prescriptionItemBundle] = Reference(urn:uuid:ChargeItem-KBV-Bundle)
* supportingInformation[dispenseItemBundle] = Reference(urn:uuid:ChargeItem-Receipt-Bundle)
* supportingInformation[receiptBundle] = Reference(urn:uuid:ChargeItem-Abgabedaten-Bundle)