Instance: d8463daf-258e-4cad-a86a-6fd42fac161c
InstanceOf: Practitioner
Usage: #inline
* meta.profile = "https://fhir.kbv.de/StructureDefinition/KBV_PR_FOR_Practitioner|1.0.3"
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