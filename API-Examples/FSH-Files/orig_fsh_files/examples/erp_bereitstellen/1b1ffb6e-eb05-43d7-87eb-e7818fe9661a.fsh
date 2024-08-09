Instance: 1b1ffb6e-eb05-43d7-87eb-e7818fe9661a
InstanceOf: Coverage
Usage: #inline
* meta.profile = "https://fhir.kbv.de/StructureDefinition/KBV_PR_FOR_Coverage|1.0.3"
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
* payor.identifier.system = "http://fhir.de/NamingSystem/arge-ik/iknr"
* payor.identifier.value = "104212059"
* payor.display = "AOK Rheinland/Hamburg"