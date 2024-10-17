Instance: erp-chargeitem-example-abgabedatenPKV
InstanceOf: Bundle
Usage: #inline
* id = "6d240a29-144f-477b-b8e7-92d4b4bcebfd"
* meta.profile = "http://fhir.abda.de/eRezeptAbgabedaten/StructureDefinition/DAV-PKV-PR-ERP-AbgabedatenBundle|1.2"
* meta.tag[0].display = "Beispiel RezeptAbgabedatenPKV Bundle (PZN-1)"
* meta.tag[+].display = "ACHTUNG! Der fachlich korrekte Inhalt der Beispielinstanz kann nicht gewährleistet werden. Wir sind jederzeit dankbar für Hinweise auf Fehler oder für Verbesserungsvorschläge."
* identifier.system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* identifier.value = "200.424.187.927.272.20"
* type = #document
* timestamp = "2023-07-03T11:30:00Z"
* entry[0].fullUrl = "urn:uuid:0877a6ac-9433-43b2-bcd5-46046479c306"
* entry[=].resource = 0877a6ac-9433-43b2-bcd5-46046479c306
* entry[+].fullUrl = "urn:uuid:b998a7cd-f582-4a23-b86a-58e22402d105"
* entry[=].resource = b998a7cd-f582-4a23-b86a-58e22402d105
* entry[+].fullUrl = "urn:uuid:7b1e6c94-71fb-4bbe-9c5a-2e865efd8526"
* entry[=].resource = 7b1e6c94-71fb-4bbe-9c5a-2e865efd8526
* entry[+].fullUrl = "urn:uuid:da94b6d8-f853-48b9-b101-be9280b81a71"
* entry[=].resource = da94b6d8-f853-48b9-b101-be9280b81a71

Instance: 0877a6ac-9433-43b2-bcd5-46046479c306
InstanceOf: Composition
Usage: #inline
* meta.profile = "http://fhir.abda.de/eRezeptAbgabedaten/StructureDefinition/DAV-PKV-PR-ERP-AbgabedatenComposition|1.2"
* status = #final
* type = $DAV-CS-ERP-CompositionTypes#ERezeptAbgabedaten
* date = "2023-07-03T11:30:00Z"
* author = Reference(urn:uuid:b998a7cd-f582-4a23-b86a-58e22402d105)
* title = "ERezeptAbgabedaten"
* section[0].title = "Abgabeinformationen"
* section[=].entry = Reference(urn:uuid:7b1e6c94-71fb-4bbe-9c5a-2e865efd8526)
* section[+].title = "Apotheke"
* section[=].entry = Reference(urn:uuid:b998a7cd-f582-4a23-b86a-58e22402d105)

Instance: b998a7cd-f582-4a23-b86a-58e22402d105
InstanceOf: Organization
Usage: #inline
* meta.profile = "http://fhir.abda.de/eRezeptAbgabedaten/StructureDefinition/DAV-PKV-PR-ERP-Apotheke|1.2"
* identifier.system = "http://fhir.de/sid/arge-ik/iknr"
* identifier.value = "308412345"
* name = "Adler-Apotheke"
* address.type = #physical
* address.line = "Taunusstraße 89"
* address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=].valueString = "Taunusstraße"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=].valueString = "89"
* address.city = "Langen"
* address.postalCode = "63225"
* address.country = "D"

Instance: 7b1e6c94-71fb-4bbe-9c5a-2e865efd8526
InstanceOf: MedicationDispense
Usage: #inline
* meta.profile = "http://fhir.abda.de/eRezeptAbgabedaten/StructureDefinition/DAV-PKV-PR-ERP-Abgabeinformationen|1.2"
* extension[0].url = "http://fhir.abda.de/eRezeptAbgabedaten/StructureDefinition/DAV-EX-ERP-Abrechnungszeilen"
* extension[=].valueReference = Reference(urn:uuid:da94b6d8-f853-48b9-b101-be9280b81a71)
* extension[+].url = "http://fhir.abda.de/eRezeptAbgabedaten/StructureDefinition/DAV-PKV-EX-ERP-AbrechnungsTyp"
* extension[=].valueCodeableConcept = $DAV-PKV-CS-ERP-AbrechnungsTyp#1
* status = #completed
* medicationCodeableConcept = $data-absent-reason-cs#not-applicable
* performer.actor = Reference(urn:uuid:b998a7cd-f582-4a23-b86a-58e22402d105)
* authorizingPrescription.identifier.system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* authorizingPrescription.identifier.value = "200.424.187.927.272.20"
* type = $DAV-CS-ERP-MedicationDispenseTyp#Abgabeinformationen
* whenHandedOver = "2023-07-03"

Instance: da94b6d8-f853-48b9-b101-be9280b81a71
InstanceOf: Invoice
Usage: #inline
* meta.profile = "http://fhir.abda.de/eRezeptAbgabedaten/StructureDefinition/DAV-PKV-PR-ERP-Abrechnungszeilen|1.2"
* status = #issued
* type = $DAV-CS-ERP-InvoiceTyp#Abrechnungszeilen
* lineItem.sequence = 1
* lineItem.chargeItemCodeableConcept = $pzn#03879429
* lineItem.chargeItemCodeableConcept.text = "BELOC-ZOK mite 47,5 mg Retardtabletten 30 St"
* lineItem.priceComponent.extension[0].url = "http://fhir.abda.de/eRezeptAbgabedaten/StructureDefinition/DAV-EX-ERP-MwStSatz"
* lineItem.priceComponent.extension[=].valueDecimal = 19.00
* lineItem.priceComponent.extension[+].extension[0].url = "Kategorie"
* lineItem.priceComponent.extension[=].extension[=].valueCodeableConcept = $DAV-PKV-CS-ERP-KostenVersicherterKategorie#0
* lineItem.priceComponent.extension[=].extension[+].url = "Kostenbetrag"
* lineItem.priceComponent.extension[=].extension[=].valueMoney.value = 0.00
* lineItem.priceComponent.extension[=].extension[=].valueMoney.currency = #EUR
* lineItem.priceComponent.extension[=].url = "http://fhir.abda.de/eRezeptAbgabedaten/StructureDefinition/DAV-EX-ERP-KostenVersicherter"
* lineItem.priceComponent.type = #informational
* lineItem.priceComponent.factor = 1
* lineItem.priceComponent.amount.value = 21.04
* lineItem.priceComponent.amount.currency = #EUR
* totalGross.extension.url = "http://fhir.abda.de/eRezeptAbgabedaten/StructureDefinition/DAV-EX-ERP-Gesamtzuzahlung"
* totalGross.extension.valueMoney.value = 0.00
* totalGross.extension.valueMoney.currency = #EUR
* totalGross.value = 21.04
* totalGross.currency = #EUR