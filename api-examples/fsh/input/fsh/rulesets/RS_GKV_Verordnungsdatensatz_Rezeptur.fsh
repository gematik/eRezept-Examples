RuleSet: GKV_VerordnungsDatensatz_Rezeptur(task-id)
* insert DateTimeStamp(meta.lastUpdated)
* insert DateTimeStamp(timestamp)
* identifier.value = "{task-id}"
* type = #document
* entry[Dokumenteninformation].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/Composition/df0538d0-77dd-4266-a4fe-1664fe907751"
* entry[Dokumenteninformation].resource = df0538d0-77dd-4266-a4fe-1664fe907751
* entry[VerordnungArzneimittel].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/MedicationRequest/4e8c932a-bef5-443d-9e85-64bca6d53d53"
* entry[VerordnungArzneimittel].resource = 4e8c932a-bef5-443d-9e85-64bca6d53d53
* entry[RezeptierdatenWirkstoffverordnung].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/Medication/746a8246-4b21-43a2-a422-9821cdc7caf3"
* entry[RezeptierdatenWirkstoffverordnung].resource = 746a8246-4b21-43a2-a422-9821cdc7caf3
* entry[Patient].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/Patient/17b0721b-d538-4455-b1bb-2c2dfc19d234"
* entry[Patient].resource = 17b0721b-d538-4455-b1bb-2c2dfc19d234
* entry[AusstellendeVerschreibendeVerantwortlichePerson][+].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/Practitioner/5caad17d-d3a1-4d01-8ebe-3889dcac30cc"
* entry[AusstellendeVerschreibendeVerantwortlichePerson][=].resource = 5caad17d-d3a1-4d01-8ebe-3889dcac30cc
* entry[AusstellendeVerschreibendeVerantwortlichePerson][+].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/Practitioner/407974ea-b5c7-47e5-be09-9310a00afb31"
* entry[AusstellendeVerschreibendeVerantwortlichePerson][=].resource = 407974ea-b5c7-47e5-be09-9310a00afb31
* entry[Einrichtung].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/Organization/94662b9e-af55-4206-b52a-7e086d0d4d82"
* entry[Einrichtung].resource = 94662b9e-af55-4206-b52a-7e086d0d4d82
* entry[Krankenversicherungsverhaeltnis].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/Coverage/a2ef1193-0739-46de-bc77-65f13feaa7d3"
* entry[Krankenversicherungsverhaeltnis].resource = a2ef1193-0739-46de-bc77-65f13feaa7d3

Instance: df0538d0-77dd-4266-a4fe-1664fe907751
InstanceOf: KBV_PR_ERP_Composition
Usage: #inline
* extension[Rechtsgrundlage].valueCoding = $KBV_CS_SFHIR_KBV_STATUSKENNZEICHEN#00
* subject = Reference(17b0721b-d538-4455-b1bb-2c2dfc19d234)
* insert DateTimeStamp(date)
* author[Arzt] = Reference(407974ea-b5c7-47e5-be09-9310a00afb31)
* author[Pruefnummer].identifier.value = "Y/400/1910/36/346"
* attester.mode = #legal
* attester.party = Reference(5caad17d-d3a1-4d01-8ebe-3889dcac30cc)
* custodian = Reference(94662b9e-af55-4206-b52a-7e086d0d4d82)
* section[Verordnung_Arzneimittel].entry = Reference(4e8c932a-bef5-443d-9e85-64bca6d53d53)
* section[Krankenversicherungsverhaeltnis].entry = Reference(a2ef1193-0739-46de-bc77-65f13feaa7d3)

Instance: 4e8c932a-bef5-443d-9e85-64bca6d53d53
InstanceOf: KBV_PR_ERP_Prescription
Usage: #inline
* extension[Zuzahlungsstatus].valueCoding = $KBV_CS_FOR_StatusCoPayment#0
* extension[Notdienstgebuehr].valueBoolean = false
* extension[BVG].valueBoolean = false
* extension[Unfallinformationen].extension[Unfallkennzeichen].valueCoding = $KBV_CS_FOR_Ursache_Type#1
* insert Date(extension[Unfallinformationen].extension[Unfalltag].valueDate)
* extension[Mehrfachverordnung].extension[Kennzeichen].valueBoolean = true
* extension[Mehrfachverordnung].extension[Nummerierung].valueRatio.numerator.value = 2
* extension[Mehrfachverordnung].extension[Nummerierung].valueRatio.denominator.value = 4
* insert Date(extension[Mehrfachverordnung].extension[Zeitraum].valuePeriod.start)
* insert DatePlus30days(extension[Mehrfachverordnung].extension[Zeitraum].valuePeriod.end)
* extension[Mehrfachverordnung].extension[ID].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[Mehrfachverordnung].extension[ID].valueIdentifier.value = "urn:uuid:24e2e10d-e962-4d1c-be4f-8760e690a5f0"
* medicationReference = Reference(746a8246-4b21-43a2-a422-9821cdc7caf3)
* subject = Reference(17b0721b-d538-4455-b1bb-2c2dfc19d234)
* insert Date(authoredOn)
* requester = Reference(407974ea-b5c7-47e5-be09-9310a00afb31)
* insurance = Reference(a2ef1193-0739-46de-bc77-65f13feaa7d3)
* note.text = "Dummy-Hinweis für die Apotheke"
* dosageInstruction.extension[Dosierungskennzeichen].valueBoolean = false
* dispenseRequest.quantity = 2 '{Package}'

Instance: 746a8246-4b21-43a2-a422-9821cdc7caf3
InstanceOf: KBV_PR_ERP_Medication_Compounding
Usage: #inline
* extension[Arzneimittelkategorie].valueCoding = $KBV_CS_ERP_Medication_Category#00
* extension[Impfstoff].valueBoolean = false
* extension[Kategorie].valueCodeableConcept.coding.code = #373873005:860781008=362943005
* code.coding.code = #rezeptur
* form.text = "Lösung"
* amount.numerator.unit = "ml"
* amount.numerator.extension[Gesamtmenge].valueString = "100"
* amount.denominator.value = 1
* ingredient[0]
  * itemCodeableConcept.text = "Salicylsäure"
  * itemCodeableConcept.coding.code = #063137289
  * strength.numerator.value = 5
  * strength.numerator.unit = "g"
  * strength.denominator.value = 1
* ingredient[+]
  * itemCodeableConcept.text = "2-propanol 70 %"
  * itemCodeableConcept.coding.code = #987654321
  * strength.extension[MengeFreitext].valueString = "Ad 100 g"

Instance: 17b0721b-d538-4455-b1bb-2c2dfc19d234
InstanceOf: KBV_PR_FOR_Patient
Usage: #inline
* identifier[versichertenId_GKV].value = "X234567890"
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
Instance: 5caad17d-d3a1-4d01-8ebe-3889dcac30cc
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
Instance: 407974ea-b5c7-47e5-be09-9310a00afb31
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

Instance: 94662b9e-af55-4206-b52a-7e086d0d4d82
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

Instance: a2ef1193-0739-46de-bc77-65f13feaa7d3
InstanceOf: KBV_PR_FOR_Coverage
Usage: #inline
* extension[BesonderePersonengruppe].valueCoding = $KBV_CS_SFHIR_KBV_PERSONENGRUPPE#00
* extension[DMPKennzeichen].valueCoding = $KBV_CS_SFHIR_KBV_DMP#00
* extension[WOP].valueCoding = $KBV_CS_SFHIR_ITA_WOP#03
* extension[Versichertenart].valueCoding = $KBV_CS_SFHIR_KBV_VERSICHERTENSTATUS#1
* type = $versicherungsart-de-basis#GKV
* beneficiary = Reference(17b0721b-d538-4455-b1bb-2c2dfc19d234)
* payor.identifier.value = "104212059"
* payor.display = "AOK Rheinland/Hamburg"
