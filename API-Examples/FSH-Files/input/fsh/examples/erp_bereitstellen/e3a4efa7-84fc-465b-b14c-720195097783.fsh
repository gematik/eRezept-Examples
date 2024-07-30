Instance: e3a4efa7-84fc-465b-b14c-720195097783
InstanceOf: Medication
Usage: #inline
* meta.profile = "https://fhir.kbv.de/StructureDefinition/KBV_PR_ERP_Medication_Ingredient|1.0.1"
* extension[0].url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_Category"
* extension[=].valueCoding = $KBV_CS_ERP_Medication_Category#00
* extension[+].url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_Vaccine"
* extension[=].valueBoolean = false
* code = $KBV_CS_ERP_Medication_Type#wirkstoff
* form.text = "Tabletten"
* amount.numerator.value = 20
* amount.numerator.unit = "Stk"
* amount.denominator.value = 1
* ingredient.itemCodeableConcept = $ask#Dummy-ASK
* ingredient.itemCodeableConcept.text = "Ibuprofen"
* ingredient.strength.numerator.value = 800
* ingredient.strength.numerator.unit = "mg"
* ingredient.strength.denominator.value = 1