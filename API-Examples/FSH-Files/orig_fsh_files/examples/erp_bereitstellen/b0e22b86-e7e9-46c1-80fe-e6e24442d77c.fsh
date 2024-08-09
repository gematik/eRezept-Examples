Instance: b0e22b86-e7e9-46c1-80fe-e6e24442d77c
InstanceOf: Composition
Usage: #inline
* meta.profile = "https://fhir.kbv.de/StructureDefinition/KBV_PR_ERP_Composition|1.0.1"
* extension.url = "https://fhir.kbv.de/StructureDefinition/KBV_EX_FOR_Legal_basis"
* extension.valueCoding = $KBV_CS_SFHIR_KBV_STATUSKENNZEICHEN#00
* status = #final
* type = $KBV_CS_SFHIR_KBV_FORMULAR_ART#e16A
* subject = Reference(9774f67f-a238-4daf-b4e6-679deeef3811)
* date = "2020-02-03T11:30:02Z"
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