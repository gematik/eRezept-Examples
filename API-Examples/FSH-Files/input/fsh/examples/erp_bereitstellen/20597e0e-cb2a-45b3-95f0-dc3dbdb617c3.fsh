Instance: 20597e0e-cb2a-45b3-95f0-dc3dbdb617c3
InstanceOf: Practitioner
Usage: #inline
* meta.profile = "https://fhir.kbv.de/StructureDefinition/KBV_PR_FOR_Practitioner|1.0.3"
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