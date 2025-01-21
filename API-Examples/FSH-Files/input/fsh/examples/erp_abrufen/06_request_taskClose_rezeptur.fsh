Instance: erp-abrufen-06-request-taskClose-rezeptur
InstanceOf: GEM_ERP_PR_PAR_CloseOperation_Input
Usage: #example
* parameter[rxDispensation]
  * part[medicationDispense]
    * resource = erp-abrufen-06-request-taskClose-medicationDispense-rezeptur
  * part[medication]
    * resource = rezeptur-medication


Instance: erp-abrufen-06-request-taskClose-medicationDispense-rezeptur
InstanceOf: GEM_ERP_PR_MedicationDispense
Usage: #inline
* identifier[prescriptionID].value = "160.000.000.000.000.01"
* medicationReference = Reference(rezeptur-medication)
* insert GKV_Identifier(subject.identifier.value)
* insert ApoTelematikID(performer.actor.identifier)
* quantity = 1 '{Package}'
* insert Date(whenHandedOver)
* dosageInstruction.text = "1-0-1-0"

Instance: rezeptur-medication
InstanceOf: GEM_ERP_PR_Medication
Usage: #example
* contained[0] = MedicationPropanol-close
* contained[+] = MedicationSalicylsaeure-close
* extension[drugCategory].valueCoding = $epa-drug-category-cs#00
* extension[type].valueCoding = $sct#1208954007 "Extemporaneous preparation (product)"
* extension[isVaccine].valueBoolean = false
* form.text = "Lösung"
* amount.numerator
  * extension[totalQuantity].valueString = "100"
  * unit = "ml"
* amount.denominator.value = 1
* ingredient[+]
  * itemReference = Reference(MedicationSalicylsaeure-close)
  * strength.numerator = 5 'g'
  * strength.denominator.value = 1
  * strength.denominator.system.extension[dataAbsentReason].valueCode = #unknown
  * strength.denominator.code.extension[dataAbsentReason].valueCode = #unknown
* ingredient[+]
  * itemReference = Reference(MedicationPropanol-close)
  * strength.extension[amountText].valueString = "Ad 100 g"
  * strength.numerator
    * value.extension[+].url = $data-absent-reason
    * value.extension[=].valueCode = #unknown
    * system.extension[dataAbsentReason].valueCode = #unknown
    * code.extension[dataAbsentReason].valueCode = #unknown
  * strength.denominator
    * value.extension[+].url = $data-absent-reason
    * value.extension[=].valueCode = #unknown
    * system.extension[dataAbsentReason].valueCode = #unknown
    * code.extension[dataAbsentReason].valueCode = #unknown

Instance: MedicationSalicylsaeure-close
InstanceOf: EPAMedicationPZNIngredient
Usage: #inline
* extension[type].valueCoding = $sct#781405001 "Medicinal product package (product)"
* code = $pzn-cs#063137289 "Salicylsäure"
* code.text = "Salicylsäure"

Instance: MedicationPropanol-close
InstanceOf: EPAMedicationPZNIngredient
Usage: #inline
* extension[type].valueCoding = $sct#781405001 "Medicinal product package (product)"
* code = $pzn-cs#987654321 "2-propanol 70 %"
* code.text = "2-propanol 70 %"