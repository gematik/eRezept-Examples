Instance: erp-eprescription-06-EU-Close
InstanceOf: GEM_ERP_PR_PAR_EU_CloseOperation_Input
Usage: #example
Title: "Example EU-Close Parameters"

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
InstanceOf: GEM_ERP_PR_MedicationDispense_EU
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
InstanceOf: GEM_ERP_PR_EUPractitioner
Usage: #example
Title: "Example-EU-Practitioner"
Description: "Example of an EU Practitioner"
* identifier[ehdsi].value = "1234567890"
* name.family = "Sanches"
* name.given = "Pedro"

Instance: Example-EU-Organization
InstanceOf: GEM_ERP_PR_EUOrganization
Usage: #example
Title: "Example-EU-Organization"
Description: "Example of an EU Organization"
* identifier[ehdsi].value = "1234567890"
* identifier[facilityId].value = "136ad69f"
* name = "Pharmacia de Santa Maria"
* address
  * line = "Rua da Alegria, 123"
  * city = "Lisbon"
  * country = "Portugal"

Instance: Example-EU-PractitionerRole
InstanceOf: GEM_ERP_PR_EUPractitionerRole
Usage: #example
Title: "Example-EU-PractitionerRole"
Description: "Example of an EU PractitionerRole"
* practitioner = Reference(Example-EU-Practitioner)
* organization = Reference(Example-EU-Organization)