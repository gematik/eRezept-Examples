Instance: erp-eprescription-07-EU-Close
InstanceOf: GEM_ERPEU_PR_PAR_CloseOperation_Input
Usage: #example
Title: "Example EU-Close Parameters"
* parameter[requestData]
  * name = "requestData"
  * part[kvnr]
    * name = "kvnr"
    * insert GKV_Identifier(valueIdentifier)
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
    * resource = SumatripanMedication-EU


Instance: Example-MedicationDispense-EU
InstanceOf: GEM_ERPEU_PR_MedicationDispense
Usage: #example
Title: "Example Medication Dispense"
Description: "Example of a Medication Dispense."
* id = "160.000.000.000.000.01"
* identifier[prescriptionID].value = "160.000.000.000.000.01"
* insert GKV_Identifier(subject.identifier)
* performer.actor = Reference(Example-EU-PractitionerRole)
* insert Date(whenHandedOver)
* medicationReference = Reference(SumatripanMedication-EU)

Instance: Example-EU-Practitioner
InstanceOf: GEM_ERPEU_PR_Practitioner
Usage: #inline
Title: "Example-EU-Practitioner"
Description: "Example of an EU Practitioner"
* id = "a7adde1a-af5c-4814-8fea-e46e7e63ed07"
* identifier[+].value = "1234567890"
* name.family = "Sanches"
* name.given = "Pedro"
* name.text = "Pedro Sanches"

Instance: Example-EU-Organization
InstanceOf: GEM_ERPEU_PR_Organization
Usage: #inline
Title: "Example-EU-Organization"
Description: "Example of an EU Organization"
* id = "6a3c8c57-0870-476e-90e3-25b7562799d3"
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
Usage: #inline
Title: "Example-EU-PractitionerRole"
Description: "Example of an EU PractitionerRole"
* id = "ebe39d92-276b-436d-a9ea-9dd5e042637b"
* practitioner = Reference(Example-EU-Practitioner)
* organization = Reference(Example-EU-Organization)
* code.coding = urn:oid:2.16.840.1.113883.2.9.6.2.7#2262 "Pharmacists"