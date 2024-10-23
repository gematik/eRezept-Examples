RuleSet: SumatripanMedication
* extension[drugCategory].valueCoding.code = #00
* extension[isVaccine].valueBoolean = false
* extension[normSizeCode].valueCode = #N1
* code.coding = $pzn-cs#06313728
* code.text = "Sumatriptan-1a Pharma 100 mg Tabletten"
* form.coding.system = "https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_KBV_DARREICHUNGSFORM"
* form.coding.code = #TAB
* amount.numerator
  * extension[totalQuantity].valueString = "20 St."
  * value = 20
  * unit = "St"
* amount.denominator.value = 1

RuleSet: FlusarionMedication
* extension[drugCategory].valueCoding.code = #00
* extension[isVaccine].valueBoolean = false
* extension[normSizeCode].valueCode = #N1
* code = $pzn-cs#14186244
* code.text = "FLUSARION EH50/250UG/60 PC"
* form = $KBV_CS_SFHIR_KBV_DARREICHUNGSFORM#IHP