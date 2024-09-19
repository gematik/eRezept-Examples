Instance: erp-bereitstellen-02-Prescription-Bundle
InstanceOf: Bundle
Usage: #example
//* fhir_comments = " Beispiel-Bundle Wirkstoffverordnung "
* meta.lastUpdated = "2021-07-04T08:30:00Z"
* meta.profile = "https://fhir.kbv.de/StructureDefinition/KBV_PR_ERP_Bundle|1.1.0"
* identifier.system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* identifier.value = "160.123.456.789.123.58"
* type = #document
* timestamp = "2021-07-04T08:30:00Z"
* entry[0].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/Composition/b0e22b86-e7e9-46c1-80fe-e6e24442d77c"
* entry[=].resource = b0e22b86-e7e9-46c1-80fe-e6e24442d77c
* entry[+].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/MedicationRequest/f58f4403-7a3a-4a12-bb15-b2fa25b02561"
* entry[=].resource = f58f4403-7a3a-4a12-bb15-b2fa25b02561
* entry[+].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/Medication/e3a4efa7-84fc-465b-b14c-720195097783"
* entry[=].resource = e3a4efa7-84fc-465b-b14c-720195097783
* entry[+].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/Patient/9774f67f-a238-4daf-b4e6-679deeef3811"
* entry[=].resource = 9774f67f-a238-4daf-b4e6-679deeef3811
* entry[+].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/Practitioner/20597e0e-cb2a-45b3-95f0-dc3dbdb617c3"
* entry[=].resource = 20597e0e-cb2a-45b3-95f0-dc3dbdb617c3
* entry[+].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/Practitioner/d8463daf-258e-4cad-a86a-6fd42fac161c"
* entry[=].resource = d8463daf-258e-4cad-a86a-6fd42fac161c
* entry[+].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/Organization/cf042e44-086a-4d51-9c77-172f9a972e3b"
* entry[=].resource = cf042e44-086a-4d51-9c77-172f9a972e3b
* entry[+].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/Coverage/1b1ffb6e-eb05-43d7-87eb-e7818fe9661a"
* entry[=].resource = 1b1ffb6e-eb05-43d7-87eb-e7818fe9661a

Instance: b0e22b86-e7e9-46c1-80fe-e6e24442d77c
InstanceOf: Composition
Usage: #inline
* meta.profile = "https://fhir.kbv.de/StructureDefinition/KBV_PR_ERP_Composition|1.1.0"
* extension.url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_FOR_Legal_basis"
* extension.valueCoding = $KBV_CS_SFHIR_KBV_STATUSKENNZEICHEN#00
* status = #final
* type = $KBV_CS_SFHIR_KBV_FORMULAR_ART#e16A
* subject = Reference(9774f67f-a238-4daf-b4e6-679deeef3811)
* date = "2021-07-03T11:30:02Z"
* author[0] = Reference(d8463daf-258e-4cad-a86a-6fd42fac161c)
* author[=].type = "Practitioner"
* author[+].type = "Device"
* author[=].identifier.system = "https://fhir.kbv.de/NamingSystem/KBV_NS_FOR_Pruefnummer"
* author[=].identifier.value = "Y/400/1910/36/346"
* title = "elektronische Arzneimittelverordnung"
* attester.mode = #legal
* attester.party = Reference(20597e0e-cb2a-45b3-95f0-dc3dbdb617c3)
* custodian = Reference(cf042e44-086a-4d51-9c77-172f9a972e3b)
* section[0].code = $KBV_CS_ERP_Section_Type#Prescription
* section[=].entry = Reference(f58f4403-7a3a-4a12-bb15-b2fa25b02561)
//* section[=].entry.reference.fhir_comments = " Referenz auf Verordnung (MedicationRequest) "
* section[+].code = $KBV_CS_ERP_Section_Type#Coverage
* section[=].entry = Reference(1b1ffb6e-eb05-43d7-87eb-e7818fe9661a)
//* section[=].entry.reference.fhir_comments = " Referenz auf Krankenkasse/KostentrĂ¤ger  "

Instance: f58f4403-7a3a-4a12-bb15-b2fa25b02561
InstanceOf: MedicationRequest
Usage: #inline
* meta.profile = "https://fhir.kbv.de/StructureDefinition/KBV_PR_ERP_Prescription|1.1.0"
* extension[0].url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_FOR_StatusCoPayment"
* extension[=].valueCoding = $KBV_CS_FOR_StatusCoPayment#0
* extension[+].url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_EmergencyServicesFee"
* extension[=].valueBoolean = false
* extension[+].url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_BVG"
* extension[=].valueBoolean = false
* extension[+].extension[0].url = "Unfallkennzeichen"
* extension[=].extension[=].valueCoding = $KBV_CS_FOR_Ursache_Type#1
* extension[=].extension[+].url = "Unfalltag"
* extension[=].extension[=].valueDate = "2021-07-01"
* extension[=].url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_FOR_Accident"
* extension[+].extension[0].url = "Kennzeichen"
* extension[=].extension[=].valueBoolean = true
* extension[=].extension[+].url = "Nummerierung"
* extension[=].extension[=].valueRatio.numerator.value = 2
* extension[=].extension[=].valueRatio.denominator.value = 4
* extension[=].extension[+].url = "Zeitraum"
* extension[=].extension[=].valuePeriod.start = "2021-07-02"
* extension[=].extension[=].valuePeriod.end = "2021-09-30"
* extension[=].extension[+].url = "ID"
* extension[=].extension[=].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[=].extension[=].valueIdentifier.value = "urn:uuid:24e2e10d-e962-4d1c-be4f-8760e690a5f0"
* extension[=].url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Multiple_Prescription"
* status = #active
* intent = #order
* medicationReference = Reference(e3a4efa7-84fc-465b-b14c-720195097783)
* subject = Reference(9774f67f-a238-4daf-b4e6-679deeef3811)
* authoredOn = "2021-07-02"
* requester = Reference(d8463daf-258e-4cad-a86a-6fd42fac161c)
* insurance = Reference(1b1ffb6e-eb05-43d7-87eb-e7818fe9661a)
* note.text = "Dummy-Hinweis für die Apotheke"
* dosageInstruction.extension.url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_DosageFlag"
* dosageInstruction.extension.valueBoolean = false
* dispenseRequest.quantity = 2 '{Package}'
//* substitution.allowedBoolean = true

Instance: e3a4efa7-84fc-465b-b14c-720195097783
InstanceOf: Medication
Usage: #inline
* meta.profile = "https://fhir.kbv.de/StructureDefinition/KBV_PR_ERP_Medication_Ingredient|1.1.0"
* extension[0].url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_Category"
* extension[=].valueCoding = $KBV_CS_ERP_Medication_Category#00
* extension[+].url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_Vaccine"
* extension[=].valueBoolean = false
* code = $KBV_CS_ERP_Medication_Type#wirkstoff
* form.text = "Tabletten"
// amount.numerator.value = 20
* amount.numerator.extension[+].url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_PackagingSize"
* amount.numerator.extension[=].valueString = "20"
* amount.numerator.unit = "Stk"
* amount.denominator.value = 1
* ingredient.itemCodeableConcept = $ask#Dummy-ASK
* ingredient.itemCodeableConcept.text = "Ibuprofen"
* ingredient.strength.numerator.value = 800
* ingredient.strength.numerator.unit = "mg"
* ingredient.strength.denominator.value = 1

Instance: 9774f67f-a238-4daf-b4e6-679deeef3811
InstanceOf: Patient
Usage: #inline
* meta.profile = "https://fhir.kbv.de/StructureDefinition/KBV_PR_FOR_Patient|1.1.0"
* identifier.type = $identifier-type-de-basis#GKV
* identifier.system = "http://fhir.de/sid/gkv/kvid-10"
* identifier.value = "X234567890"
* name.use = #official
* name.family.extension.url = "http://hl7.org/fhir/StructureDefinition/humanname-own-name"
* name.family.extension.valueString = "Königsstein"
* name.family = "Ludger Königsstein"
* name.given = "Ludger"
* birthDate = "1935-06-22"
* address.type = #both
* address.line = "Musterstr. 1"
* address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=].valueString = "1"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=].valueString = "Musterstr."
* address.city = "Berlin"
* address.postalCode = "10623"

Instance: 20597e0e-cb2a-45b3-95f0-dc3dbdb617c3
InstanceOf: Practitioner
Usage: #inline
* meta.profile = "https://fhir.kbv.de/StructureDefinition/KBV_PR_FOR_Practitioner|1.1.0"
* identifier.type = $v2-0203#LANR
* identifier.system = "https://fhir.kbv.de/NamingSystem/KBV_NS_Base_ANR"
* identifier.value = "838382202"
* name.use = #official
* name.family.extension.url = "http://hl7.org/fhir/StructureDefinition/humanname-own-name"
* name.family.extension.valueString = "Topp-Glücklich"
* name.family = "Topp-Glücklich"
* name.given = "Hans"
* name.prefix = "Dr. med."
* name.prefix.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name.prefix.extension.valueCode = #AC
* qualification[0].code = $KBV_CS_FOR_Qualification_Type#00
* qualification[+].code.text = "Hausarzt"
* qualification[=].code.coding.system = "https://fhir.kbv.de/CodeSystem/KBV_CS_FOR_Berufsbezeichnung"
* qualification[=].code.coding.code = #Berufsbezeichnung

Instance: d8463daf-258e-4cad-a86a-6fd42fac161c
InstanceOf: Practitioner
Usage: #inline
* meta.profile = "https://fhir.kbv.de/StructureDefinition/KBV_PR_FOR_Practitioner|1.1.0"
* identifier.type = $v2-0203#LANR
* identifier.system = "https://fhir.kbv.de/NamingSystem/KBV_NS_Base_ANR"
* identifier.value = "838382210"
* name.use = #official
* name.family.extension.url = "http://hl7.org/fhir/StructureDefinition/humanname-own-name"
* name.family.extension.valueString = "Meier"
* name.family = "Meier"
* name.given = "Jörgen"
* qualification[0].code = $KBV_CS_FOR_Qualification_Type#03
* qualification[+].code.text = "Arzt in Weiterbildung"
* qualification[=].code.coding.system = "https://fhir.kbv.de/CodeSystem/KBV_CS_FOR_Berufsbezeichnung"
* qualification[=].code.coding.code = #Berufsbezeichnung

Instance: cf042e44-086a-4d51-9c77-172f9a972e3b
InstanceOf: Organization
Usage: #inline
* meta.profile = "https://fhir.kbv.de/StructureDefinition/KBV_PR_FOR_Organization|1.1.0"
* identifier.type = $v2-0203#BSNR
* identifier.system = "https://fhir.kbv.de/NamingSystem/KBV_NS_Base_BSNR"
* identifier.value = "031234567"
* name = "Hausarztpraxis Dr. Topp-Glücklich"
* telecom.system = #phone
* telecom.value = "0301234567"
* address.type = #both
* address.line = "Musterstr. 2"
* address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=].valueString = "2"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=].valueString = "Musterstr."
* address.city = "Berlin"
* address.postalCode = "10623"

Instance: 1b1ffb6e-eb05-43d7-87eb-e7818fe9661a
InstanceOf: Coverage
Usage: #inline
* meta.profile = "https://fhir.kbv.de/StructureDefinition/KBV_PR_FOR_Coverage|1.1.0"
* extension[0].url = "http://fhir.de/StructureDefinition/gkv/besondere-personengruppe"
* extension[=].valueCoding = $KBV_CS_SFHIR_KBV_PERSONENGRUPPE#00
* extension[+].url = "http://fhir.de/StructureDefinition/gkv/dmp-kennzeichen"
* extension[=].valueCoding = $KBV_CS_SFHIR_KBV_DMP#00
* extension[+].url = "http://fhir.de/StructureDefinition/gkv/wop"
* extension[=].valueCoding = $KBV_CS_SFHIR_ITA_WOP#03
* extension[+].url = "http://fhir.de/StructureDefinition/gkv/versichertenart"
* extension[=].valueCoding = $KBV_CS_SFHIR_KBV_VERSICHERTENSTATUS#1
* status = #active
* type = $versicherungsart-de-basis#GKV
* beneficiary = Reference(9774f67f-a238-4daf-b4e6-679deeef3811)
* payor.identifier.system = "http://fhir.de/sid/arge-ik/iknr"
* payor.identifier.value = "104212059"
* payor.display = "AOK Rheinland/Hamburg"