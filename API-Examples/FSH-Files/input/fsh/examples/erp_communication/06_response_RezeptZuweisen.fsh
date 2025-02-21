Instance: erp-communication-06-response-RezeptZuweisen
InstanceOf: GEM_ERP_PR_Communication_DispReq
Usage: #example
* id = "cd4958ad-da92-453c-aef1-f3e02a4c6c73"
* meta.id = "Communication-erp-communication-06-response-RezeptZuweisen"
* insert DateTimeStamp(sent)
* basedOn = Reference(Task/160.000.000.000.000.01/$accept?ac=777bea0e13cc9c42ceec14aec3ddee2263325dc2c6c699db115f58fe423607ea)
* status = #unknown
* extension[flowType].valueCoding = https://gematik.de/fhir/erp/CodeSystem/GEM_ERP_CS_FlowType#160 "Muster 16 (Apothekenpflichtige Arzneimittel)"
* insert ApoTelematikID(recipient.identifier)
* insert GKV_Identifier(sender.identifier)
* payload.contentString = "{ \"version\": 1, \"supplyOptionsType\": \"onPremise\", \"name\": \"Dr. Maximilian von Muster\", \"address\": [ \"wohnhaft bei Emilia Fischer\", \"Bundesallee 312\", \"123. OG\", \"12345 Berlin\" ], \"phone\": \"004916094858168\" }"