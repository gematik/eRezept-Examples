RuleSet: DiGA_MedicationDispense
* meta.id = "MedicationDispense-erp-diga-04-medication-dispense-diga"
* extension[redeemCode].valueString = "DE12345678901234"
* insert MedicationDispense_PrescriptionID(162)
* status = #completed
* medicationReference.identifier.value = "12345678"
* medicationReference.display = "Gematico Diabetestherapie"
* insert GKV_Identifier(subject.identifier.value)
* insert KTRTelematikID(performer.actor.identifier.value)
* whenHandedOver = "2024-04-03"

RuleSet: MedicationDispense_PrescriptionID(flowType)
* identifier[prescriptionID].value = "{flowType}.000.000.000.000.01"