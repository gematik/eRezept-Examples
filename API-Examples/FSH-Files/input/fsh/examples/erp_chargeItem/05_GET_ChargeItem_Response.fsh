Instance: erp-chargeItem-05-GET-ChargeItem-Response
InstanceOf: Bundle
Usage: #example
* type = #collection
* timestamp = "2023-11-21T08:18:58.929+00:00"
* entry[0].fullUrl = "https://erp-ref.zentral.erp.splitdns.ti-dienste.de/ChargeItem/200.000.001.944.091.20"
* entry[=].resource = Inline-Instance-for-803bc98b-6ad6-4caa-81c1-893600ba4e4b-1
* entry[+].fullUrl = "urn:uuid:f1909de6-7d21-443b-a2ae-230b9cb62f70-1"
* entry[=].resource = f1909de6-7d21-443b-a2ae-230b9cb62f70-1
* entry[+].fullUrl = "urn:uuid:d9a98ce4-9585-4031-ba85-3719bf0fc14a"
* entry[=].resource = d9a98ce4-9585-4031-ba85-3719bf0fc14a
* entry[+].fullUrl = "urn:uuid:d45fa5b0-7b01-457f-a41f-b1ea28982963"
* entry[=].resource = d45fa5b0-7b01-457f-a41f-b1ea28982963

Instance: Inline-Instance-for-803bc98b-6ad6-4caa-81c1-893600ba4e4b-1
InstanceOf: GEM_ERPCHRG_PR_ChargeItem
Usage: #inline
* id = "200.000.001.944.091.20"
* insert ChargeItem
* supportingInformation[prescriptionItemBundle] = Reference(urn:uuid:d9a98ce4-9585-4031-ba85-3719bf0fc14a)
* supportingInformation[dispenseItemBundle] = Reference(urn:uuid:f1909de6-7d21-443b-a2ae-230b9cb62f70-1)
* supportingInformation[receiptBundle] = Reference(urn:uuid:d45fa5b0-7b01-457f-a41f-b1ea28982963)
