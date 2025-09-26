Instance: erp-chargeItem-05-GET-ChargeItem-Response
InstanceOf: Bundle
Usage: #example
* type = #collection
* insert DateTimeStamp(timestamp)
* entry[0].fullUrl = "https://erp-ref.zentral.erp.splitdns.ti-dienste.de/ChargeItem/200.000.000.000.000.01"
* entry[=].resource = Inline-Instance-for-803bc98b-6ad6-4caa-81c1-893600ba4e4b-1
* entry[+].fullUrl = "urn:uuid:ChargeItem-Receipt-Bundle"
* entry[=].resource = ChargeItem-Receipt-Bundle
* entry[+].fullUrl = "urn:uuid:ChargeItem-KBV-Bundle"
* entry[=].resource = ChargeItem-KBV-Bundle
* entry[+].fullUrl = "urn:uuid:ChargeItem-Abgabedaten-Bundle"
* entry[=].resource = ChargeItem-Abgabedaten-Bundle

Instance: Inline-Instance-for-803bc98b-6ad6-4caa-81c1-893600ba4e4b-1
InstanceOf: GEM_ERPCHRG_PR_ChargeItem
Usage: #inline
* id = "200.000.000.000.000.01-3"
* insert ChargeItem
* supportingInformation[prescriptionItemBundle] = Reference(urn:uuid:ChargeItem-KBV-Bundle)
* supportingInformation[receiptBundle] = Reference(urn:uuid:ChargeItem-Receipt-Bundle)
* supportingInformation[dispenseItemBundle] = Reference(urn:uuid:ChargeItem-Abgabedaten-Bundle)
