Instance: erp-chargeItem-09-GET-ChargeItem-Response
InstanceOf: Bundle
Usage: #example
* type = #collection
* insert DateTimeStamp(timestamp)
* entry[0].fullUrl = "https://erp-dev.zentral.erp.splitdns.ti-dienste.de/ChargeItem/200.000.000.000.000.01"
* entry[=].resource = 200.000.000.000.000.01-7
* entry[+].fullUrl = "urn:uuid:ChargeItem-Receipt-Bundle"
* entry[=].resource = ChargeItem-Receipt-Bundle
* entry[+].fullUrl = "urn:uuid:ChargeItem-PKV-KBV-Bundle"
* entry[=].resource = ChargeItem-PKV-KBV-Bundle
* entry[+].fullUrl = "urn:uuid:ChargeItem-PKV-Abgabedaten-Bundle"
* entry[=].resource = ChargeItem-PKV-Abgabedaten-Bundle

Instance: 200.000.000.000.000.01-7
InstanceOf: GEM_ERPCHRG_PR_ChargeItem
Usage: #inline
* insert ChargeItemWithAccessCode
// * insert ChargeItemExtension //TODO: Ist nicht im FD dabei, sollte es?
* supportingInformation[prescriptionItemBundle] = Reference(urn:uuid:ChargeItem-PKV-KBV-Bundle)
* supportingInformation[dispenseItemBundle] = Reference(urn:uuid:ChargeItem-PKV-Abgabedaten-Bundle)
* supportingInformation[receiptBundle] = Reference(urn:uuid:ChargeItem-Receipt-Bundle)

Instance: ChargeItem-PKV-Abgabedaten-Bundle
InstanceOf: DAV_PKV_PR_ERP_AbgabedatenBundle
Usage: #inline
* insert PKV_Abgabedatensatz
* signature = GEM-ERP-PR-Signature

Instance: ChargeItem-PKV-KBV-Bundle
InstanceOf: KBV_PR_ERP_Bundle
Usage: #inline
* insert PKV_Verordnungsdatensatz
* signature = GEM-ERP-PR-Signature