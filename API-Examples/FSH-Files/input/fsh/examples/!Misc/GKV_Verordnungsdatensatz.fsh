Instance: VerordnungsdatensatzGKV
InstanceOf: KBV_PR_ERP_Bundle
Usage: #example
* insert GKV_VerordnungsDatensatz(160.000.000.000.000.01)

RuleSet: GKV_VerordnungsDatensatz(task-id)
* insert DateTimeStamp(meta.lastUpdated)
* insert DateTimeStamp(timestamp)
* identifier.value = "{task-id}"
* type = #document
* entry[Dokumenteninformation].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/Composition/b0e22b86-e7e9-46c1-80fe-e6e24442d77c"
* entry[Dokumenteninformation].resource = b0e22b86-e7e9-46c1-80fe-e6e24442d77c
* entry[VerordnungArzneimittel].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/MedicationRequest/f58f4403-7a3a-4a12-bb15-b2fa25b02561"
* entry[VerordnungArzneimittel].resource = f58f4403-7a3a-4a12-bb15-b2fa25b02561
* entry[RezeptierdatenWirkstoffverordnung].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/Medication/e3a4efa7-84fc-465b-b14c-720195097783"
* entry[RezeptierdatenWirkstoffverordnung].resource = e3a4efa7-84fc-465b-b14c-720195097783
* entry[Patient].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/Patient/9774f67f-a238-4daf-b4e6-Pat-GKV"
* entry[Patient].resource = 9774f67f-a238-4daf-b4e6-Pat-GKV
* entry[AusstellendeVerschreibendeVerantwortlichePerson][+].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/Practitioner/20597e0e-cb2a-45b3-95f0-dc3dbdb617c3"
* entry[AusstellendeVerschreibendeVerantwortlichePerson][=].resource = 20597e0e-cb2a-45b3-95f0-dc3dbdb617c3
* entry[AusstellendeVerschreibendeVerantwortlichePerson][+].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/Practitioner/d8463daf-258e-4cad-a86a-6fd42fac161c"
* entry[AusstellendeVerschreibendeVerantwortlichePerson][=].resource = d8463daf-258e-4cad-a86a-6fd42fac161c
* entry[Einrichtung].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/Organization/cf042e44-086a-4d51-9c77-172f9a972e3b"
* entry[Einrichtung].resource = cf042e44-086a-4d51-9c77-172f9a972e3b
* entry[Krankenversicherungsverhaeltnis].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/Coverage/1b1ffb6e-eb05-43d7-87eb-Cov-GKV"
* entry[Krankenversicherungsverhaeltnis].resource = 1b1ffb6e-eb05-43d7-87eb-Cov-GKV

Instance: b0e22b86-e7e9-46c1-80fe-e6e24442d77c
InstanceOf: KBV_PR_ERP_Composition
Usage: #inline
* extension[Rechtsgrundlage].valueCoding = $KBV_CS_SFHIR_KBV_STATUSKENNZEICHEN#00
* subject = Reference(9774f67f-a238-4daf-b4e6-Pat-GKV)
* insert DateTimeStamp(date)
* author[Arzt] = Reference(d8463daf-258e-4cad-a86a-6fd42fac161c)
* author[Pruefnummer].identifier.value = "Y/400/1910/36/346"
* attester.mode = #legal
* attester.party = Reference(20597e0e-cb2a-45b3-95f0-dc3dbdb617c3)
* custodian = Reference(cf042e44-086a-4d51-9c77-172f9a972e3b)
* section[Verordnung_Arzneimittel].entry = Reference(f58f4403-7a3a-4a12-bb15-b2fa25b02561)
* section[Krankenversicherungsverhaeltnis].entry = Reference(1b1ffb6e-eb05-43d7-87eb-Cov-GKV)

Instance: f58f4403-7a3a-4a12-bb15-b2fa25b02561
InstanceOf: KBV_PR_ERP_Prescription
Usage: #inline
* extension[Zuzahlungsstatus].valueCoding = $KBV_CS_FOR_StatusCoPayment#0
* extension[Notdienstgebuehr].valueBoolean = false
* extension[SER].valueBoolean = false
* extension[Unfallinformationen].extension[Unfallkennzeichen].valueCoding = $KBV_CS_FOR_Ursache_Type#1
* insert Date(extension[Unfallinformationen].extension[Unfalltag].valueDate)
* extension[Mehrfachverordnung].extension[Kennzeichen].valueBoolean = true
* extension[Mehrfachverordnung].extension[Nummerierung].valueRatio.numerator.value = 2
* extension[Mehrfachverordnung].extension[Nummerierung].valueRatio.denominator.value = 4
* insert Date(extension[Mehrfachverordnung].extension[Zeitraum].valuePeriod.start)
* insert DatePlus30days(extension[Mehrfachverordnung].extension[Zeitraum].valuePeriod.end)
* extension[Mehrfachverordnung].extension[ID].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[Mehrfachverordnung].extension[ID].valueIdentifier.value = "urn:uuid:24e2e10d-e962-4d1c-be4f-8760e690a5f0"
* medicationReference = Reference(e3a4efa7-84fc-465b-b14c-720195097783)
* subject = Reference(9774f67f-a238-4daf-b4e6-Pat-GKV)
* insert Date(authoredOn)
* requester = Reference(d8463daf-258e-4cad-a86a-6fd42fac161c)
* insurance = Reference(1b1ffb6e-eb05-43d7-87eb-Cov-GKV)
* note.text = "Dummy-Hinweis für die Apotheke"
* dosageInstruction.extension[Dosierungskennzeichen].valueBoolean = false
* dispenseRequest.quantity.value = 2
* dispenseRequest.quantity.unit = "Packung"

Instance: e3a4efa7-84fc-465b-b14c-720195097783
InstanceOf: KBV_PR_ERP_Medication_Ingredient
Usage: #inline
* extension[Arzneimittelkategorie].valueCoding = $KBV_CS_ERP_Medication_Category#00
* extension[Impfstoff].valueBoolean = false
* form.text = "Tabletten"
* amount.numerator.extension[Packungsgroesse].valueString = "2x20"
* amount.numerator.unit = "Stk"
* amount.denominator.value = 1
* ingredient[+]
  * itemCodeableConcept = $ask#Dummy-ASK
  * itemCodeableConcept.text = "Ibuprofen"
  * strength.numerator.value = 800
  * strength.numerator.unit = "mg"
  * strength.denominator.value = 1
  * strength.denominator.unit = "Tablette"

Instance: 9774f67f-a238-4daf-b4e6-Pat-GKV
InstanceOf: KBV_PR_FOR_Patient
Usage: #inline
* identifier[versichertenId].value = "X234567890"
* name[name]
  * .use = #official
  * family.extension[nachname].valueString = "Königsstein"
  * family = "Ludger Königsstein"
  * given = "Ludger"
* birthDate = "1935-06-22"
* address[Strassenanschrift]
  * type = #both
  * line = "Musterstr. 1"
  * line.extension[Hausnummer].valueString = "1"
  * line.extension[Strasse].valueString = "Musterstr."
  * city = "Berlin"
  * postalCode = "10623"

// Attester
Instance: 20597e0e-cb2a-45b3-95f0-dc3dbdb617c3
InstanceOf: KBV_PR_FOR_Practitioner
Usage: #inline
* identifier[ANR].value = "838382202"
* name[name]
  * use = #official
  * family.extension[nachname].valueString = "Topp-Glücklich"
  * family = "Topp-Glücklich"
  * given = "Hans"
  * prefix = "Dr. med."
  * prefix.extension[prefix-qualifier].valueCode = #AC
* qualification[Typ].code = $KBV_CS_FOR_Qualification_Type#00
* qualification[Berufsbezeichnung].code.text = "FA Biochemie"

// Author
Instance: d8463daf-258e-4cad-a86a-6fd42fac161c
InstanceOf: KBV_PR_FOR_Practitioner
Usage: #inline
* identifier[ANR].value = "838382210"
* name[name]
  * use = #official
  * family.extension[nachname].valueString = "Meier"
  * family = "Meier"
  * given = "Jörgen"
* qualification[Typ].code = $KBV_CS_FOR_Qualification_Type#03
* qualification[Berufsbezeichnung].code.text = "FA Onkologie"

Instance: cf042e44-086a-4d51-9c77-172f9a972e3b
InstanceOf: KBV_PR_FOR_Organization
Usage: #inline
* identifier[Betriebsstaettennummer].value = "031234567"
* name = "Hausarztpraxis Dr. Topp-Glücklich"
* telecom[telefon].value = "0301234567"
* address[Strassenanschrift]
  * type = #both
  * line = "Musterstr. 2"
  * line.extension[Hausnummer].valueString = "2"
  * line.extension[Strasse].valueString = "Musterstr."
  * city = "Berlin"
  * postalCode = "10623"

Instance: 1b1ffb6e-eb05-43d7-87eb-Cov-GKV
InstanceOf: KBV_PR_FOR_Coverage
Usage: #inline
* extension[BesonderePersonengruppe].valueCoding = $KBV_CS_SFHIR_KBV_PERSONENGRUPPE#00
* extension[DMPKennzeichen].valueCoding = $KBV_CS_SFHIR_KBV_DMP#00
* extension[WOP].valueCoding = $KBV_CS_SFHIR_ITA_WOP#03
* extension[Versichertenart].valueCoding = $KBV_CS_SFHIR_KBV_VERSICHERTENSTATUS#1
* type = $versicherungsart-de-basis#GKV
* beneficiary = Reference(9774f67f-a238-4daf-b4e6-Pat-GKV)
* payor.identifier.value = "104212059"
* payor.display = "AOK Rheinland/Hamburg"
