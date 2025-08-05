RuleSet: DiGA_MedicationDispense
* extension[redeemCode].valueString = "DE12345678901234"
* insert MedicationDispense_PrescriptionID(162)
* status = #completed
* medicationReference.identifier.value = "12345678"
* medicationReference.display = "Gematico Diabetestherapie"
* insert GKV_Identifier(subject.identifier)
* insert KTRTelematikID(performer.actor.identifier)
* whenHandedOver = "2024-04-03"

RuleSet: MedicationDispense_PrescriptionID(flowType)
* identifier[prescriptionID].value = "{flowType}.000.000.000.000.01"