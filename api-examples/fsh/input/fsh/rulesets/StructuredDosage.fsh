RuleSet: StructuredDosage(renderedDosageInstruction)
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationDispense.renderedDosageInstruction"
* extension[=].valueMarkdown = {renderedDosageInstruction}
* extension[+]
  * url = "http://ig.fhir.de/igs/medication/StructureDefinition/GeneratedDosageInstructionsMeta"
  * extension[+]
    * url = "algorithmVersion"
    * valueString = "1.0.1"
  * extension[+]
    * url = "language"
    * valueCode = #de-DE