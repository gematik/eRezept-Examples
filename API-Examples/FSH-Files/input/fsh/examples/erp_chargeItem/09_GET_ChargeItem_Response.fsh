Instance: erp-chargeItem-09-GET-ChargeItem-Response
InstanceOf: Bundle
Usage: #example
* type = #collection
* insert DateTimeStamp(timestamp)
* entry[0].fullUrl = "https://erp-dev.zentral.erp.splitdns.ti-dienste.de/ChargeItem/200.000.000.000.000.01"
* entry[=].resource = 200.000.000.000.000.01-7
* entry[+].fullUrl = "urn:uuid:f1909de6-7d21-443b-a2ae-230b9cb62f70-1"
* entry[=].resource = f1909de6-7d21-443b-a2ae-230b9cb62f70-1
* entry[+].fullUrl = "urn:uuid:42a8260d-579f-4cde-a288-4de0bfb6e6d9"
* entry[=].resource = 42a8260d-579f-4cde-a288-4de0bfb6e6d9
* entry[+].fullUrl = "urn:uuid:42772ecc-3d67-4351-a719-2d728426a06b"
* entry[=].resource = 42772ecc-3d67-4351-a719-2d728426a06b

Instance: 200.000.000.000.000.01-7
InstanceOf: GEM_ERPCHRG_PR_ChargeItem
Usage: #inline
* insert ChargeItemWithAccessCode
//* identifier[AccessCode].value = "555bjf73jr8d9si2ceec14aec3ddee2263325dc2c6c699db115f58fe423607ea"
* supportingInformation[prescriptionItemBundle] = Reference(urn:uuid:42a8260d-579f-4cde-a288-4de0bfb6e6d9)
* supportingInformation[dispenseItemBundle] = Reference(urn:uuid:f1909de6-7d21-443b-a2ae-230b9cb62f70-1)
* supportingInformation[receiptBundle] = Reference(urn:uuid:42772ecc-3d67-4351-a719-2d728426a06b)

Instance: 42772ecc-3d67-4351-a719-2d728426a06b
InstanceOf: DAV_PKV_PR_ERP_AbgabedatenBundle
Usage: #inline
* insert PKV_Abgabedatensatz
* signature = GEM-ERP-PR-Signature

Instance: 42a8260d-579f-4cde-a288-4de0bfb6e6d9
InstanceOf: KBV_PR_ERP_Bundle
Usage: #inline
* insert PKV_Verordnungsdatensatz
* signature = GEM-ERP-PR-Signature