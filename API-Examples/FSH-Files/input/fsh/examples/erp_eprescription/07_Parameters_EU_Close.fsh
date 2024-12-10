Instance: erp-eprescription-07-EU-Close
InstanceOf: GEM_ERPEU_PR_PAR_CloseOperation_Input
Usage: #example
Title: "Example EU-Close Parameters"
* parameter[requestData]
  * name = "requestData"
  * part[kvnr]
    * name = "kvnr"
    * insert GKV_Identifier(valueIdentifier.value)
  * part[accessCode]
    * name = "accessCode"
    * valueIdentifier.value = "ABC123"
  * part[countryCode]
    * name = "countryCode"
    * valueCoding.code = #BE
  * part[practitionerName]
    * name = "practitionerName"
    * valueString = "Pedro Sanches"
  * part[practitionerRole]
    * name = "practitionerRole"
    * valueCoding = urn:oid:2.16.840.1.113883.2.9.6.2.7#2262 "Pharmacists"
  * part[pointOfCare]
    * name = "pointOfCare"
    * valueString = "Pharmacia de Santa Maria"
  * part[healthcare-facility-type]
    * name = "healthcare-facility-type"
    * valueCoding = $cs-organization-profession-oid#1.2.276.0.76.4.54 "Öffentliche Apotheke"


* parameter[practitionerData]
  * name = "practitionerData"
  * resource = Example-EU-Practitioner
* parameter[organizationData]
  * name = "organizationData"
  * resource = Example-EU-Organization
* parameter[practitionerRoleData]
  * name = "practitionerRoleData"
  * resource = Example-EU-PractitionerRole

* parameter[rxDispensation]
  * name = "rxDispensation"
  * part[medicationDispense]
    * name = "medicationDispense"
    * resource = Example-MedicationDispense-EU
  * part[medication]
    * name = "medication"
    * resource = SumatripanMedication


Instance: Example-MedicationDispense-EU
InstanceOf: GEM_ERPEU_PR_MedicationDispense
Usage: #example
Title: "Example Medication Dispense"
Description: "Example of a Medication Dispense."
* identifier[prescriptionID].value = "160.000.033.491.280.78"
* insert GKV_Identifier(subject.identifier.value)
* insert GKV_Identifier_System(subject.identifier.system)
* performer.actor = Reference(Example-EU-PractitionerRole)
* insert Date(whenHandedOver)
* medicationReference = Reference(SumatripanMedication)

Instance: Example-EU-Practitioner
InstanceOf: GEM_ERPEU_PR_Practitioner
Usage: #example
Title: "Example-EU-Practitioner"
Description: "Example of an EU Practitioner"
* identifier[+].value = "1234567890"
* name.family = "Sanches"
* name.given = "Pedro"

Instance: Example-EU-Organization
InstanceOf: GEM_ERPEU_PR_Organization
Usage: #example
Title: "Example-EU-Organization"
Description: "Example of an EU Organization"
* identifier[+].value = "1234567890"
* identifier[+].value = "136ad69f"
* name = "Pharmacia de Santa Maria"
* type.coding = $cs-organization-profession-oid#1.2.276.0.76.4.54 "Öffentliche Apotheke"
* address
  * line = "Rua da Alegria, 123"
  * city = "Lisbon"
  * country = "Portugal"
  * state = "Lisbon"
  * postalCode = "1234-567"

Instance: Example-EU-PractitionerRole
InstanceOf: GEM_ERPEU_PR_PractitionerRole
Usage: #example
Title: "Example-EU-PractitionerRole"
Description: "Example of an EU PractitionerRole"
* practitioner = Reference(Example-EU-Practitioner)
* organization = Reference(Example-EU-Organization)
* code.coding = urn:oid:2.16.840.1.113883.2.9.6.2.7#2262 "Pharmacists"