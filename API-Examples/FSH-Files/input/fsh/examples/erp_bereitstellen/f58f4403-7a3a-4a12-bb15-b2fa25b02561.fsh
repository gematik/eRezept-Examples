Instance: f58f4403-7a3a-4a12-bb15-b2fa25b02561
InstanceOf: MedicationRequest
Usage: #inline
* meta.profile = "https://fhir.kbv.de/StructureDefinition/KBV_PR_ERP_Prescription|1.0.1"
* extension[0].url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_StatusCoPayment"
* extension[=].valueCoding = $KBV_CS_ERP_StatusCoPayment#0
* extension[+].url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_EmergencyServicesFee"
* extension[=].valueBoolean = false
* extension[+].url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_BVG"
* extension[=].valueBoolean = false
* extension[+].extension[0].url = "unfallkennzeichen"
* extension[=].extension[=].valueCoding = $KBV_CS_FOR_Ursache_Type#1
* extension[=].extension[+].url = "unfalltag"
* extension[=].extension[=].valueDate = "2020-05-01"
* extension[=].url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Accident"
* extension[+].extension[0].url = "Kennzeichen"
* extension[=].extension[=].valueBoolean = true
* extension[=].extension[+].url = "Nummerierung"
* extension[=].extension[=].valueRatio.numerator.value = 2
* extension[=].extension[=].valueRatio.denominator.value = 4
* extension[=].extension[+].url = "Zeitraum"
* extension[=].extension[=].valuePeriod.start = "2021-01-02"
* extension[=].extension[=].valuePeriod.end = "2021-03-30"
* extension[=].url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Multiple_Prescription"
* status = #active
* intent = #order
* medicationReference = Reference(e3a4efa7-84fc-465b-b14c-720195097783)
* subject = Reference(9774f67f-a238-4daf-b4e6-679deeef3811)
* authoredOn = "2020-05-02"
* requester = Reference(20597e0e-cb2a-45b3-95f0-dc3dbdb617c3)
* insurance = Reference(1b1ffb6e-eb05-43d7-87eb-e7818fe9661a)
* note.text = "Dummy-Hinweis für die Apotheke"
* dosageInstruction.extension.url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_DosageFlag"
* dosageInstruction.extension.valueBoolean = false
* dispenseRequest.quantity = 2 '{Package}'
* substitution.allowedBoolean = true