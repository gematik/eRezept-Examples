RuleSet: ChargeItemIdentifier
* identifier[PrescriptionID].value = "200.000.000.000.000.01"

RuleSet: ChargeItem
* insert ChargeItemIdentifier
* insert PKV_Identifier(subject.identifier)
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

Instance: ChargeItem-KBV-Bundle
InstanceOf: KBV_PR_ERP_Bundle
Usage: #inline
* insert PKV_Verordnungsdatensatz

Instance: ChargeItem-Receipt-Bundle
InstanceOf: GEM_ERP_PR_Bundle
Usage: #inline
* insert GEM_ERP_PR_Bundle

Instance: ChargeItem-Abgabedaten-Bundle
InstanceOf: DAV_PKV_PR_ERP_AbgabedatenBundle
Usage: #inline
* insert PKV_Abgabedatensatz

Instance: ChargeItem-Abgabedaten-Binary
InstanceOf: Binary
Usage: #inline
* contentType = #application/pkcs7-mime
* data = "RGllcyBpc3QgZWluIEJlaXNwaWVs"