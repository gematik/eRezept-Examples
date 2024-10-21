Instance: erp-abrufen-07-request-taskCloseMultiple
InstanceOf: GEM_ERP_PR_PAR_CloseOperation_Input
Usage: #example
* insert PackageMetaProfile(StructureDefinition/GEM_ERP_PR_PAR_CloseOperation_Input)
* parameter[rxDispensation][+]
  * part[medicationDispense][+]
    * resource = a3ddc2b1-826d-4b81-87b2-558834e00f50
  * part[medication][+]
    * resource = c2b10a5e-3d71-434c-86e0-824af208a2bf
* parameter[rxDispensation][+]
  * part[medicationDispense][+]
    * resource = 854b6c62-8c8a-4ad6-b145-d5bac5f9f010
  * part[medication][+]
    * resource = 756b422f-4df0-4afe-9d54-da534a44109e

Instance: a3ddc2b1-826d-4b81-87b2-558834e00f50
InstanceOf: MedicationDispense
Usage: #inline
* insert PackageMetaProfile(StructureDefinition/GEM_ERP_PR_MedicationDispense)
* identifier.system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* identifier.value = "160.000.088.357.031.88"
* status = #completed
* medicationReference = Reference(c2b10a5e-3d71-434c-86e0-824af208a2bf)
* subject.identifier.system = "http://fhir.de/sid/gkv/kvid-10"
* subject.identifier.value = "K220635158"
* performer.actor.identifier.system = "https://gematik.de/fhir/sid/telematik-id"
* performer.actor.identifier.value = "3-15.2.1456789123.191"
* whenHandedOver = "2023-11-30"

Instance: c2b10a5e-3d71-434c-86e0-824af208a2bf
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
* code = $pzn-cs#14186244
* code.text = "FLUSARION EH50/250UG/60 PC"
* form = $KBV_CS_SFHIR_KBV_DARREICHUNGSFORM#IHP

Instance: 854b6c62-8c8a-4ad6-b145-d5bac5f9f010
InstanceOf: MedicationDispense
Usage: #inline
* insert PackageMetaProfile(StructureDefinition/GEM_ERP_PR_MedicationDispense)
* identifier.system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* identifier.value = "160.000.088.357.031.88"
* status = #completed
* medicationReference = Reference(756b422f-4df0-4afe-9d54-da534a44109e)
* subject.identifier.system = "http://fhir.de/sid/gkv/kvid-10"
* subject.identifier.value = "K220635158"
* performer.actor.identifier.system = "https://gematik.de/fhir/sid/telematik-id"
* performer.actor.identifier.value = "3-15.2.1456789123.191"
* whenHandedOver = "2023-11-30"

Instance: 756b422f-4df0-4afe-9d54-da534a44109e
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
* code = $pzn-cs#14186244
* code.text = "FLUSARION EH50/250UG/60 PC"
* form = $KBV_CS_SFHIR_KBV_DARREICHUNGSFORM#IHP