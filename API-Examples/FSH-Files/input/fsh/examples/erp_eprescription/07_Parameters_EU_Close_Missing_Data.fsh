Instance: erp-eprescription-07-EU-Close-Missing-Data
InstanceOf: GEM_ERPEU_PR_PAR_CloseOperation_Input
Usage: #example
Title: "Example EU-Close Parameters with Missing Data"
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
  * resource = Example-EU-Practitioner-Missing-Data
* parameter[organizationData]
  * name = "organizationData"
  * resource = Example-EU-Organization-Missing-Data
* parameter[practitionerRoleData]
  * name = "practitionerRoleData"
  * resource = Example-EU-PractitionerRole-Missing-Data

* parameter[rxDispensation]
  * name = "rxDispensation"
  * part[medicationDispense]
    * name = "medicationDispense"
    * resource = Example-MedicationDispense-EU
  * part[medication]
    * name = "medication"
    * resource = SumatripanMedication


Instance: Example-EU-Practitioner-Missing-Data
InstanceOf: GEM_ERPEU_PR_Practitioner
Usage: #example
Title: "Example-EU-Practitioner"
Description: "Example of an EU Practitioner-Missing-Data"
* identifier[+].value = "1234567890"
* name.family = "Sanches"
* name.given = "Pedro"
* name.text = "Pedro Sanches"

Instance: Example-EU-Organization-Missing-Data
InstanceOf: GEM_ERPEU_PR_Organization
Usage: #example
Title: "Example-EU-Organization"
Description: "Example of an EU Organization-Missing-Data"
* identifier[+].value = "1234567890"
* identifier[+].value = "136ad69f"
* name = "Pharmacia de Santa Maria"
* type.coding = $cs-organization-profession-oid#1.2.276.0.76.4.54 "Öffentliche Apotheke"
* address
  * line = "Rua da Alegria, 123"
  * city = "Lisbon"
  * country = "Portugal"
  * state.extension.url = Canonical(DataAbsentReason)
  * state.extension.valueCode = #not-applicable
  * postalCode.extension.url = Canonical(DataAbsentReason)
  * postalCode.extension.valueCode = #unknown

Instance: Example-EU-PractitionerRole-Missing-Data
InstanceOf: GEM_ERPEU_PR_PractitionerRole
Usage: #example
Title: "Example-EU-PractitionerRole"
Description: "Example of an EU PractitionerRole-Missing-Data"
* practitioner = Reference(Example-EU-Practitioner-Missing-Data)
* organization = Reference(Example-EU-Organization-Missing-Data)
* code.coding = urn:oid:2.16.840.1.113883.2.9.6.2.7#2262 "Pharmacists"