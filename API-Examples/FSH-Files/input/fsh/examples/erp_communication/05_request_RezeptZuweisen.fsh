Instance: erp-communication-05-request-RezeptZuweisen
InstanceOf: Communication
Usage: #example
* insert PackageMetaProfile(StructureDefinition/GEM_ERP_PR_Communication_DispReq)
* basedOn = Reference(Task/160.123.456.789.123.58/$accept?ac=777bea0e13cc9c42ceec14aec3ddee2263325dc2c6c699db115f58fe423607ea)
* status = #unknown
* extension[+].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_PrescriptionType"
* extension[=].valueCoding = https://gematik.de/fhir/erp/CodeSystem/GEM_ERP_CS_FlowType#160 "Muster 16 (Apothekenpflichtige Arzneimittel)"
* recipient.identifier.system = "https://gematik.de/fhir/sid/telematik-id"
* recipient.identifier.value = "3-1.54.10123404"
* payload.contentString = "{ \"version\": 1, \"supplyOptionsType\": \"onPremise\", \"name\": \"Dr. Maximilian von Muster\", \"address\": [ \"wohnhaft bei Emilia Fischer\", \"Bundesallee 312\", \"123. OG\", \"12345 Berlin\" ], \"phone\": \"004916094858168\" }"