Instance: erp-bereitstellen-02-Prescription-Bundle
InstanceOf: Bundle
Usage: #example
//* fhir_comments = " Beispiel-Bundle Wirkstoffverordnung "
* meta.lastUpdated = "2023-07-04T08:30:00Z"
* meta.profile = "https://fhir.kbv.de/StructureDefinition/KBV_PR_ERP_Bundle|1.1.0"
* identifier.system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* identifier.value = "160.000.000.000.000.01"
* type = #document
* timestamp = "2023-07-04T08:30:00Z"
* entry[0].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/Composition/819850c6-0887-4d6f-8863-f1a2ff09684c"
* entry[=].resource = 819850c6-0887-4d6f-8863-f1a2ff09684c
* entry[+].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/MedicationRequest/91630556-5f40-4b0a-a827-1a819487fa1d"
* entry[=].resource = 91630556-5f40-4b0a-a827-1a819487fa1d
* entry[+].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/Medication/25f78907-d41f-4c0e-8e95-c06912f4e267"
* entry[=].resource = 25f78907-d41f-4c0e-8e95-c06912f4e267
* entry[+].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/Patient/f4e9428f-9a0d-4765-a567-6730ba7227d7"
* entry[=].resource = f4e9428f-9a0d-4765-a567-6730ba7227d7
* entry[+].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/Practitioner/bccb2474-6eb5-4eda-ab4e-85c62b60174b"
* entry[=].resource = bccb2474-6eb5-4eda-ab4e-85c62b60174b
* entry[+].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/Practitioner/5700ceee-cffa-4773-92e6-00f8638fd32c"
* entry[=].resource = 5700ceee-cffa-4773-92e6-00f8638fd32c
* entry[+].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/Organization/a5a7caa5-125e-4eed-9584-485a411ad55f"
* entry[=].resource = a5a7caa5-125e-4eed-9584-485a411ad55f
* entry[+].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/Coverage/ae437e1f-20eb-46bf-a20d-3b3f3b68c9cf"
* entry[=].resource = ae437e1f-20eb-46bf-a20d-3b3f3b68c9cf

Instance: 819850c6-0887-4d6f-8863-f1a2ff09684c
InstanceOf: Composition
Usage: #inline
* meta.profile = "https://fhir.kbv.de/StructureDefinition/KBV_PR_ERP_Composition|1.1.0"
* extension.url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_FOR_Legal_basis"
* extension.valueCoding = $KBV_CS_SFHIR_KBV_STATUSKENNZEICHEN#00
* status = #final
* type = $KBV_CS_SFHIR_KBV_FORMULAR_ART#e16A
* subject = Reference(f4e9428f-9a0d-4765-a567-6730ba7227d7)
* date = "2023-07-03T11:30:02Z"
* author[0] = Reference(5700ceee-cffa-4773-92e6-00f8638fd32c)
* author[=].type = "Practitioner"
* author[+].type = "Device"
* author[=].identifier.system = "https://fhir.kbv.de/NamingSystem/KBV_NS_FOR_Pruefnummer"
* author[=].identifier.value = "Y/400/1910/36/346"
* title = "elektronische Arzneimittelverordnung"
* attester.mode = #legal
* attester.party = Reference(bccb2474-6eb5-4eda-ab4e-85c62b60174b)
* custodian = Reference(a5a7caa5-125e-4eed-9584-485a411ad55f)
* section[0].code = $KBV_CS_ERP_Section_Type#Prescription
* section[=].entry = Reference(91630556-5f40-4b0a-a827-1a819487fa1d)
//* section[=].entry.reference.fhir_comments = " Referenz auf Verordnung (MedicationRequest) "
* section[+].code = $KBV_CS_ERP_Section_Type#Coverage
* section[=].entry = Reference(ae437e1f-20eb-46bf-a20d-3b3f3b68c9cf)
//* section[=].entry.reference.fhir_comments = " Referenz auf Krankenkasse/KostentrĂ¤ger  "

Instance: 91630556-5f40-4b0a-a827-1a819487fa1d
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
* extension[=].extension[=].valueDate = "2023-07-01"
* extension[=].url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_FOR_Accident"
* extension[+].extension[0].url = "Kennzeichen"
* extension[=].extension[=].valueBoolean = true
* extension[=].extension[+].url = "Nummerierung"
* extension[=].extension[=].valueRatio.numerator.value = 2
* extension[=].extension[=].valueRatio.denominator.value = 4
* extension[=].extension[+].url = "Zeitraum"
* extension[=].extension[=].valuePeriod.start = "2023-07-02"
* extension[=].extension[=].valuePeriod.end = "2023-09-30"
* extension[=].extension[+].url = "ID"
* extension[=].extension[=].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[=].extension[=].valueIdentifier.value = "urn:uuid:24e2e10d-e962-4d1c-be4f-8760e690a5f0"
* extension[=].url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Multiple_Prescription"
* status = #active
* intent = #order
* medicationReference = Reference(25f78907-d41f-4c0e-8e95-c06912f4e267)
* subject = Reference(f4e9428f-9a0d-4765-a567-6730ba7227d7)
* authoredOn = "2023-07-02"
* requester = Reference(5700ceee-cffa-4773-92e6-00f8638fd32c)
* insurance = Reference(ae437e1f-20eb-46bf-a20d-3b3f3b68c9cf)
* note.text = "Dummy-Hinweis für die Apotheke"
* dosageInstruction.extension.url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_DosageFlag"
* dosageInstruction.extension.valueBoolean = false
* dispenseRequest.quantity = 2 '{Package}'
//* substitution.allowedBoolean = true

Instance: 25f78907-d41f-4c0e-8e95-c06912f4e267
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

Instance: f4e9428f-9a0d-4765-a567-6730ba7227d7
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

Instance: bccb2474-6eb5-4eda-ab4e-85c62b60174b
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

Instance: 5700ceee-cffa-4773-92e6-00f8638fd32c
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

Instance: a5a7caa5-125e-4eed-9584-485a411ad55f
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

Instance: ae437e1f-20eb-46bf-a20d-3b3f3b68c9cf
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
* beneficiary = Reference(f4e9428f-9a0d-4765-a567-6730ba7227d7)
* payor.identifier.system = "http://fhir.de/sid/arge-ik/iknr"
* payor.identifier.value = "104212059"
* payor.display = "AOK Rheinland/Hamburg"