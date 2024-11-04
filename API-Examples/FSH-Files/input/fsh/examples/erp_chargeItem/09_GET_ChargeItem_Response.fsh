Instance: erp-chargeItem-09-GET-ChargeItem-Response
InstanceOf: Bundle
Usage: #example
* type = #collection
* insert DateTimeStamp(timestamp)
* entry[0].fullUrl = "https://erp-dev.zentral.erp.splitdns.ti-dienste.de/ChargeItem/200.000.000.000.000.01"
* entry[=].resource = 200.000.000.000.000.01-7
* entry[+].fullUrl = "urn:uuid:f1909de6-7d21-443b-a2ae-230b9cb62f70-1"
* entry[=].resource = f1909de6-7d21-443b-a2ae-230b9cb62f70-1
* entry[+].fullUrl = "urn:uuid:d9a98ce4-9585-4031-ba85-3719bf0fc14a"
* entry[=].resource = d9a98ce4-9585-4031-ba85-3719bf0fc14a
* entry[+].fullUrl = "urn:uuid:d45fa5b0-7b01-457f-a41f-b1ea28982963"
* entry[=].resource = d45fa5b0-7b01-457f-a41f-b1ea28982963

Instance: 200.000.000.000.000.01-7
InstanceOf: GEM_ERPCHRG_PR_ChargeItem
Usage: #inline
* insert ChargeItemWithAccessCode
//* identifier[AccessCode].value = "555bjf73jr8d9si2ceec14aec3ddee2263325dc2c6c699db115f58fe423607ea"
* supportingInformation[prescriptionItemBundle] = Reference(urn:uuid:d9a98ce4-9585-4031-ba85-3719bf0fc14a)
* supportingInformation[dispenseItemBundle] = Reference(urn:uuid:f1909de6-7d21-443b-a2ae-230b9cb62f70-1)
* supportingInformation[receiptBundle] = Reference(urn:uuid:d45fa5b0-7b01-457f-a41f-b1ea28982963)