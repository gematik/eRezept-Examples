Instance: VerordnungsdatensatzPKV
InstanceOf: KBV_PR_ERP_Bundle
Usage: #example
* insert PKV_Verordnungsdatensatz

RuleSet: PKV_Verordnungsdatensatz
* insert DateTimeStamp(meta.lastUpdated)
* identifier.value = "200.000.000.000.000.01"
* type = #document
* insert DateTimeStamp(timestamp)
* entry[Dokumenteninformation].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/Composition/b0e22b86-e7e9-46c1-80fe-e6e24442dPKV"
* entry[Dokumenteninformation].resource = b0e22b86-e7e9-46c1-80fe-e6e24442dPKV
* entry[VerordnungArzneimittel].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/MedicationRequest/f58f4403-7a3a-4a12-bb15-b2fa25b02PKV"
* entry[VerordnungArzneimittel].resource = f58f4403-7a3a-4a12-bb15-b2fa25b02PKV
* entry[RezeptierdatenWirkstoffverordnung].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/Medication/e3a4efa7-84fc-465b-b14c-720195097PKV"
* entry[RezeptierdatenWirkstoffverordnung].resource = e3a4efa7-84fc-465b-b14c-720195097PKV
* entry[Patient].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/Patient/9774f67f-a238-4daf-b4e6-Pat-PKV"
* entry[Patient].resource = 9774f67f-a238-4daf-b4e6-Pat-PKV
* entry[AusstellendeVerschreibendeVerantwortlichePerson][+].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/Practitioner/20597e0e-cb2a-45b3-95f0-dc3dbdb61PKV"
* entry[AusstellendeVerschreibendeVerantwortlichePerson][=].resource = 20597e0e-cb2a-45b3-95f0-dc3dbdb61PKV
* entry[AusstellendeVerschreibendeVerantwortlichePerson][+].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/Practitioner/d8463daf-258e-4cad-a86a-6fd42fac1PKV"
* entry[AusstellendeVerschreibendeVerantwortlichePerson][=].resource = d8463daf-258e-4cad-a86a-6fd42fac1PKV
* entry[Einrichtung].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/Organization/cf042e44-086a-4d51-9c77-172f9a972PKV"
* entry[Einrichtung].resource = cf042e44-086a-4d51-9c77-172f9a972PKV
* entry[Krankenversicherungsverhaeltnis].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/Coverage/1b1ffb6e-eb05-43d7-87eb-Cov-PKV"
* entry[Krankenversicherungsverhaeltnis].resource = 1b1ffb6e-eb05-43d7-87eb-Cov-PKV

Instance: b0e22b86-e7e9-46c1-80fe-e6e24442dPKV
InstanceOf: KBV_PR_ERP_Composition
Usage: #inline
* extension[Rechtsgrundlage].valueCoding = $KBV_CS_SFHIR_KBV_STATUSKENNZEICHEN#00
* subject = Reference(9774f67f-a238-4daf-b4e6-Pat-PKV)
* date = "2023-07-03T11:30:02Z"
* author[Arzt] = Reference(d8463daf-258e-4cad-a86a-6fd42fac1PKV)
* author[Pruefnummer].identifier.value = "Y/400/1910/36/346"
* attester.mode = #legal
* attester.party = Reference(20597e0e-cb2a-45b3-95f0-dc3dbdb61PKV)
* custodian = Reference(cf042e44-086a-4d51-9c77-172f9a972PKV)
* section[Verordnung_Arzneimittel].entry = Reference(f58f4403-7a3a-4a12-bb15-b2fa25b02PKV)
* section[Krankenversicherungsverhaeltnis].entry = Reference(1b1ffb6e-eb05-43d7-87eb-Cov-PKV)

Instance: f58f4403-7a3a-4a12-bb15-b2fa25b02PKV
InstanceOf: KBV_PR_ERP_Prescription
Usage: #inline
* extension[Zuzahlungsstatus].valueCoding = $KBV_CS_FOR_StatusCoPayment#0
* extension[Notdienstgebuehr].valueBoolean = false
* extension[BVG].valueBoolean = false
* extension[Unfallinformationen].extension[Unfallkennzeichen].valueCoding = $KBV_CS_FOR_Ursache_Type#1
* extension[Unfallinformationen].extension[Unfalltag].valueDate = "2023-07-01"
* extension[Mehrfachverordnung].extension[Kennzeichen].valueBoolean = true
* extension[Mehrfachverordnung].extension[Nummerierung].valueRatio.numerator.value = 2
* extension[Mehrfachverordnung].extension[Nummerierung].valueRatio.denominator.value = 4
* extension[Mehrfachverordnung].extension[Zeitraum].valuePeriod.start = "2023-07-02"
* extension[Mehrfachverordnung].extension[Zeitraum].valuePeriod.end = "2023-09-30"
* extension[Mehrfachverordnung].extension[ID].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[Mehrfachverordnung].extension[ID].valueIdentifier.value = "urn:uuid:24e2e10d-e962-4d1c-be4f-8760e690a5f0"
* medicationReference = Reference(e3a4efa7-84fc-465b-b14c-720195097PKV)
* subject = Reference(9774f67f-a238-4daf-b4e6-Pat-PKV)
* authoredOn = "2023-07-02"
* requester = Reference(d8463daf-258e-4cad-a86a-6fd42fac1PKV)
* insurance = Reference(1b1ffb6e-eb05-43d7-87eb-Cov-PKV)
* note.text = "Dummy-Hinweis für die Apotheke"
* dosageInstruction.extension[Dosierungskennzeichen].valueBoolean = false
* dispenseRequest.quantity = 2 '{Package}'

Instance: e3a4efa7-84fc-465b-b14c-720195097PKV
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

Instance: 20597e0e-cb2a-45b3-95f0-dc3dbdb61PKV
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

Instance: d8463daf-258e-4cad-a86a-6fd42fac1PKV
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

Instance: cf042e44-086a-4d51-9c77-172f9a972PKV
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

Instance: 9774f67f-a238-4daf-b4e6-Pat-PKV
InstanceOf: KBV_PR_FOR_Patient
Usage: #inline
* identifier[versichertenID_pkv].value = "P123464117"
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

Instance: 1b1ffb6e-eb05-43d7-87eb-Cov-PKV
InstanceOf: KBV_PR_FOR_Coverage
Usage: #inline
* extension[BesonderePersonengruppe].valueCoding = $KBV_CS_SFHIR_KBV_PERSONENGRUPPE#00
* extension[DMPKennzeichen].valueCoding = $KBV_CS_SFHIR_KBV_DMP#00
* extension[Versichertenart].valueCoding = $KBV_CS_SFHIR_KBV_VERSICHERTENSTATUS#1
* type = $versicherungsart-de-basis#PKV
* beneficiary = Reference(9774f67f-a238-4daf-b4e6-Pat-PKV)
* payor.identifier.value = "168140346"
* payor.display = "Allianz Private Krankenversicherungs-AG"