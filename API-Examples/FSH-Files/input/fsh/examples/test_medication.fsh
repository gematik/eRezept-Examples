Instance: test-multiple-meta-profile
InstanceOf: KBV_PR_ERP_Medication_Ingredient
Usage: #example
* meta.profile[+] = "https://fhir.kbv.de/StructureDefinition/KBV_PR_ERP_Medication_Ingredient|1.2"
* meta.profile[+] = "https://fhir.kbv.de/StructureDefinition/KBV_PR_Base_Medication|1.7"
* meta.profile[+] = "http://hl7.org/fhir/StructureDefinition/Medication|4.0.1"
* extension[Arzneimittelkategorie].valueCoding = $KBV_CS_ERP_Medication_Category#00
* extension[Impfstoff].valueBoolean = false
* form.text = "Tabletten"
* amount.numerator.extension[Packungsgroesse].valueString = "2x20"
* amount.numerator.unit = "Stk"
* amount.denominator.value = 1
* ingredient[+]
  * itemCodeableConcept = $ask#Dummy-ASK
  * itemCodeableConcept.text = "Ibuprofen"
  * strength.numerator.value = 800
  * strength.numerator.unit = "mg"
  * strength.denominator.value = 1