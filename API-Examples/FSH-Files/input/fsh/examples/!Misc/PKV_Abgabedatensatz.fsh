Instance: PKV_Abgabedatensatz
InstanceOf: DAV_PKV_PR_ERP_AbgabedatenBundle
Usage: #inline
* insert PKV_Abgabedatensatz

RuleSet: PKV_Abgabedatensatz
* id = "6d240a29-144f-477b-b8e7-92d4b4bcebfd"
* identifier.value = "200.000.000.000.000.01"
* insert DateTimeStamp(timestamp)
* entry[ERezeptAbgabedaten].fullUrl = "urn:uuid:Composition-9433-43b2-bcd5-46046479c306"
* entry[ERezeptAbgabedaten].resource = Composition-9433-43b2-bcd5-46046479c306
* entry[Apotheke].fullUrl = "urn:uuid:Apo-f582-4a23-b86a-58e22402d105"
* entry[Apotheke].resource = Apo-f582-4a23-b86a-58e22402d105
* entry[Abgabeinformationen].fullUrl = "urn:uuid:Abgabeinfo-71fb-4bbe-9c5a-2e865efd8526"
* entry[Abgabeinformationen].resource = Abgabeinfo-71fb-4bbe-9c5a-2e865efd8526
* entry[Abrechnungszeilen].fullUrl = "urn:uuid:Abrechnz-f853-48b9-b101-be9280b81a71"
* entry[Abrechnungszeilen].resource = Abrechnz-f853-48b9-b101-be9280b81a71

Instance: Composition-9433-43b2-bcd5-46046479c306
InstanceOf: DAV_PKV_PR_ERP_AbgabedatenComposition
Usage: #inline
* status = #final
* type = $DAV-CS-ERP-CompositionTypes#ERezeptAbgabedaten
* date = "2023-07-03T11:30:00Z"
* author = Reference(urn:uuid:Apo-f582-4a23-b86a-58e22402d105)
* section[Abgabeinformationen].entry = Reference(urn:uuid:Abgabeinfo-71fb-4bbe-9c5a-2e865efd8526)
* section[Apotheke].entry = Reference(urn:uuid:Apo-f582-4a23-b86a-58e22402d105)

Instance: Apo-f582-4a23-b86a-58e22402d105
InstanceOf: DAV_PKV_PR_ERP_Apotheke
Usage: #inline
* identifier.value = "308412345"
* name = "Adler-Apotheke"
* address[+]
  * type = #physical
  * line = "Taunusstraße 89"
  * line.extension[Strasse].valueString = "Taunusstraße"
  * line.extension[Hausnummer].valueString = "89"
  * city = "Langen"
  * postalCode = "63225"
  * country = "D"

Instance: Abgabeinfo-71fb-4bbe-9c5a-2e865efd8526
InstanceOf: DAV_PKV_PR_ERP_Abgabeinformationen
Usage: #inline
* extension[Abrechnungszeilen].valueReference = Reference(urn:uuid:Abrechnz-f853-48b9-b101-be9280b81a71)
* extension[AbrechnungsTyp].valueCodeableConcept = $DAV-PKV-CS-ERP-AbrechnungsTyp#1
* medicationCodeableConcept = $data-absent-reason-cs#not-applicable
* performer.actor = Reference(urn:uuid:Apo-f582-4a23-b86a-58e22402d105)
* authorizingPrescription.identifier.value = "200.000.000.000.000.01"
* whenHandedOver = "2023-07-03"

Instance: Abrechnz-f853-48b9-b101-be9280b81a71
InstanceOf: DAV_PKV_PR_ERP_Abrechnungszeilen
Usage: #inline
* lineItem[+]
  * sequence = 1
  * chargeItemCodeableConcept = $pzn-cs#03879429
  * chargeItemCodeableConcept.text = "BELOC-ZOK mite 47,5 mg Retardtabletten 30 St"
  * priceComponent
    * extension[MwSt-Satz].url = "http://fhir.abda.de/eRezeptAbgabedaten/StructureDefinition/DAV-EX-ERP-MwStSatz"
    * extension[MwSt-Satz].valueDecimal = 19.00
    * extension[KostenVersicherter].extension[Kategorie].valueCodeableConcept = $DAV-PKV-CS-ERP-KostenVersicherterKategorie#0
    * extension[KostenVersicherter].extension[Kostenbetrag].valueMoney.value = 0.00
    * extension[KostenVersicherter].extension[Kostenbetrag].valueMoney.currency = #EUR
    * type = #informational
    * factor = 1
    * amount.value = 21.04
    * amount.currency = #EUR
* totalGross.extension[Gesamtzuzahlung].valueMoney.value = 0.00
* totalGross.extension[Gesamtzuzahlung].valueMoney.currency = #EUR
* totalGross.value = 21.04
* totalGross.currency = #EUR