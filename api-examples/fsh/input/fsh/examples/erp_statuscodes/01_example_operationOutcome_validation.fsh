Instance: erp-statuscodes-01-example-operationOutcome-validation
InstanceOf: OperationOutcome
Usage: #example
* issue.severity = #error
* issue.code = #invalid
* issue.details.text = "FHIR-Validation error"
* issue.diagnostics = "Bundle: error: -erp-angabeZuzahlungsstatus: In der Ressource vom Typ Coverage ist kein Zuzahlungsstatus vorhanden, dieser ist aber eine Pflichtangabe bei den Kostentraegern der Typen 'GKV' 'SKT', 'BG' oder 'UK' (from profile: [https://fhir.kbv.de/StructureDefinition/KBV_PR_ERP_Bundle|1.1.0|https://fhir.kbv.de/StructureDefinition/KBV_PR_ERP_Bundle|1.1.0]); Bundle.entry[1].resource{MedicationRequest}.extension[0]: error: element doesn't match any slice in closed slicing (from profile: [https://fhir.kbv.de/StructureDefinition/KBV_PR_ERP_Prescription|1.1.0|https://fhir.kbv.de/StructureDefinition/KBV_PR_ERP_Prescription|1.1.0]); "