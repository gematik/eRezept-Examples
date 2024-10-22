RuleSet: ChargeItemIdentifier
* identifier[PrescriptionID].value = "200.000.000.000.000.01"

RuleSet: ChargeItem
* insert ChargeItemIdentifier
* insert PKV_Identifier(subject.identifier.value)
* code = $data-absent-reason-cs#not-applicable
* enterer.identifier.value = "3-SMC-B-Testkarte-883110000116873"
* insert DateTimeStamp(enteredDate)

RuleSet: ChargeItemWithAccessCode
* insert ChargeItem
* identifier[AccessCode].value = "555bjf73jr8d9si2ceec14aec3ddee2263325dc2c6c699db115f58fe423607ea"

RuleSet: ChargeItemExtension
* extension[markingFlag]
  * extension[insuranceProvider].valueBoolean = false
  * extension[subsidy].valueBoolean = false
  * extension[taxOffice].valueBoolean = false

Instance: d9a98ce4-9585-4031-ba85-3719bf0fc14a
InstanceOf: KBV_PR_ERP_Bundle
Usage: #inline
* insert PKV_Verordnungsdatensatz

Instance: f1909de6-7d21-443b-a2ae-230b9cb62f70-1
InstanceOf: GEM_ERP_PR_Bundle
Usage: #inline
* insert GEM_ERP_PR_Bundle

Instance: d45fa5b0-7b01-457f-a41f-b1ea28982963
InstanceOf: DAV_PKV_PR_ERP_AbgabedatenBundle
Usage: #inline
* insert PKV_Abgabedatensatz

Instance: ac651416-845a-4321-b2f2-c5a408b82035
InstanceOf: Binary
Usage: #inline
* contentType = #application/pkcs7-mime
* data = "RGllcyBpc3QgZWluIEJlaXNwaWVs"