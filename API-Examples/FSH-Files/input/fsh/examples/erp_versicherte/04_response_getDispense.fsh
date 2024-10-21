Instance: erp-versicherte-04-response-getDispense
InstanceOf: Bundle
Usage: #example
* meta.lastUpdated = "2020-04-07T08:05:42.225+00:00"
* type = #searchset
* total = 1
* link.relation = "self"
* link.url = "https://erp.app.ti-dienste.de/MedicationDispense?whenhandedover=gt2020-01-01"
* entry[+].fullUrl = "https://erp.app.ti-dienste.de/MedicationDispense/160.123.456.789.123.56"
* entry[=].resource = 160.123.456.789.123.56
* entry[=].search.mode = #match
* entry[+].fullUrl = "https://erp.app.ti-dienste.de/Medication/d51b39ab-dad0-4a14-8072-ed87534af585"
* entry[=].resource = d51b39ab-dad0-4a14-8072-ed87534af585
* entry[=].search.mode = #include

Instance: 160.123.456.789.123.56
InstanceOf: MedicationDispense
Usage: #inline
* status = #completed
* identifier.value = "160.123.456.789.123.56"
* identifier.system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* medicationReference = Reference(d51b39ab-dad0-4a14-8072-ed87534af585) "Sumatriptan-1a Pharma 100 mg Tabletten"
* insert PackageMetaProfile(StructureDefinition/GEM_ERP_PR_MedicationDispense)
* dosageInstruction.text = "1-0-1-0"
* performer.actor.identifier.value = "3-SMC-B-Testkarte-883110000129070"
* performer.actor.identifier.system = "https://gematik.de/fhir/sid/telematik-id"
* whenHandedOver = "2020-03-20"
* quantity = 1 '{Package}'
* subject.identifier.value = "X123456789"
* subject.identifier.system = "http://fhir.de/sid/gkv/kvid-10"

Instance: d51b39ab-dad0-4a14-8072-ed87534af585
InstanceOf: Medication
Usage: #inline
* insert PackageMetaProfile(StructureDefinition/GEM_ERP_PR_Medication)
* extension[0].url = "https://gematik.de/fhir/epa-medication/StructureDefinition/drug-category-extension"
* extension[=].valueCoding.system = $epa-drug-category-cs
* extension[=].valueCoding.code = #00
* extension[+].url = "https://gematik.de/fhir/epa-medication/StructureDefinition/medication-id-vaccine-extension"
* extension[=].valueBoolean = false
* extension[+].url = "http://fhir.de/StructureDefinition/normgroesse"
* extension[=].valueCode = #N1
* code = $pzn-cs#06313728
* code.text = "Sumatriptan-1a Pharma 100 mg Tabletten"
* form = $KBV_CS_SFHIR_KBV_DARREICHUNGSFORM#TAB
* amount.numerator.extension.url = "https://gematik.de/fhir/epa-medication/StructureDefinition/medication-total-quantity-formulation-extension"
* amount.numerator.extension.valueString = "10"
* amount.numerator = $unitsofmeasure#{tbl} "Tabletten"
* amount.denominator.value = 1