Instance: DiGA-Verordnungsdatensatz
InstanceOf: KBV_PR_EVDGA_Bundle
Usage: #example
* insert RS_DiGA_VerordnungsDatensatz(162.000.000.000.000.01)

RuleSet: RS_DiGA_VerordnungsDatensatz(task-id)
* identifier.value = "{task-id}"
* type = #document
* insert DateTimeStamp(timestamp)
* entry[DokumentenInformation].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/Composition/55eb2cd5-27f0-46ef-87d1-1ffc30e85fd9"
* entry[DokumentenInformation].resource = 55eb2cd5-27f0-46ef-87d1-1ffc30e85fd9
* entry[VerordnungDiGA].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/DeviceRequest/a1533e28-4631-4afa-b5e6-f233fad87f53"
* entry[VerordnungDiGA].resource = a1533e28-4631-4afa-b5e6-f233fad87f53
* entry[Patient].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/Patient/40acd463-b25d-4ede-8b1f-2b0994f29aa5"
* entry[Patient].resource = 40acd463-b25d-4ede-8b1f-2b0994f29aa5
* entry[AusstellendeVerschreibendeVerantwortlichePerson].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/Practitioner/1228772e-1c72-493b-8b5c-5ae54d25843d"
* entry[AusstellendeVerschreibendeVerantwortlichePerson].resource = 1228772e-1c72-493b-8b5c-5ae54d25843d
* entry[Einrichtung].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/Organization/b87b9d90-c8db-4660-93eb-fed916caa2da"
* entry[Einrichtung].resource = b87b9d90-c8db-4660-93eb-fed916caa2da
* entry[Kostentraeger].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/Coverage/2d3a92c2-c93c-47ad-8ab5-49b275be97ee"
* entry[Kostentraeger].resource = 2d3a92c2-c93c-47ad-8ab5-49b275be97ee

Instance: 55eb2cd5-27f0-46ef-87d1-1ffc30e85fd9
InstanceOf: KBV_PR_EVDGA_Composition
Usage: #inline
* extension[rechtsgrundlage].valueCoding = $KBV_CS_SFHIR_KBV_STATUSKENNZEICHEN#00
* status = #final
* type = $KBV_CS_SFHIR_KBV_FORMULAR_ART#e16D
* subject = Reference(40acd463-b25d-4ede-8b1f-2b0994f29aa5)
* insert DateTimeStamp(date)
* author[AusstellendePerson] = Reference(1228772e-1c72-493b-8b5c-5ae54d25843d)
* author[AusstellendePerson].type = "Practitioner"
* author[Pruefnummer].type = "Device"
* author[Pruefnummer].identifier.system = "https://fhir.kbv.de/NamingSystem/KBV_NS_FOR_Pruefnummer"
* author[Pruefnummer].identifier.value = "Y/450/2501/36/523"
* title = "elektronische Verordnung digitaler Gesundheitsanwendungen"
* custodian = Reference(b87b9d90-c8db-4660-93eb-fed916caa2da)
* section[VerordnungDiGA].code = $KBV_CS_EVDGA_Section_Type#Prescription
* section[VerordnungDiGA].entry = Reference(a1533e28-4631-4afa-b5e6-f233fad87f53)
* section[Krankenversicherungsverhaeltnis].code = $KBV_CS_EVDGA_Section_Type#HealthInsurance
* section[Krankenversicherungsverhaeltnis].entry = Reference(2d3a92c2-c93c-47ad-8ab5-49b275be97ee)

Instance: a1533e28-4631-4afa-b5e6-f233fad87f53
InstanceOf: KBV_PR_EVDGA_HealthAppRequest
Usage: #inline
* extension[SER].valueBoolean = false
* status = #active
* intent = #order
* codeCodeableConcept = $pzn-cs#19205615
* codeCodeableConcept.text = "Vantis KHK und Herzinfarkt 001"
* subject = Reference(40acd463-b25d-4ede-8b1f-2b0994f29aa5)
* insert Date(authoredOn)
* requester = Reference(1228772e-1c72-493b-8b5c-5ae54d25843d)
* insurance = Reference(2d3a92c2-c93c-47ad-8ab5-49b275be97ee)

Instance: 40acd463-b25d-4ede-8b1f-2b0994f29aa5
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

Instance: 1228772e-1c72-493b-8b5c-5ae54d25843d
InstanceOf: KBV_PR_FOR_Practitioner
Usage: #inline
* identifier[ANR].value = "838382210"
* name[name]
  * use = #official
  * family.extension[nachname].valueString = "Meier"
  * family = "Meier"
  * given = "Jörgen"
* qualification[Typ].code = $KBV_CS_FOR_Qualification_Type#00
* qualification[Berufsbezeichnung].code.text = "Hausarzt"

Instance: b87b9d90-c8db-4660-93eb-fed916caa2da
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


Instance: 2d3a92c2-c93c-47ad-8ab5-49b275be97ee
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
