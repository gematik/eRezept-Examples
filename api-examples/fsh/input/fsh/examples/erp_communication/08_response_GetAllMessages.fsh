Instance: erp-communication-08-response-GetAllMessages
InstanceOf: Bundle
Usage: #example
* type = #searchset
* total = 1
* link[0].relation = "self"
* link[=].url = "https://erp.zentral.erp.splitdns.ti-dienste.de/Communication?_sort=sent&_count=50&sent=gt2025-01-14"
* entry.fullUrl = "https://erp.zentral.erp.splitdns.ti-dienste.de/Communication/a3384a5a-4180-4be5-b6e4-df80a88554dd"
* entry.resource = erp-communication-08-request-RezeptZuweisen
* entry.search.mode = #match

Instance: erp-communication-08-request-RezeptZuweisen
InstanceOf: GEM_ERP_PR_Communication_DispReq
Usage: #inline
* id = "a3384a5a-4180-4be5-b6e4-df80a88554dd"
* meta.id = "Communication-erp-communication-08-request-RezeptZuweisen"
* basedOn = Reference(Task/160.000.000.000.000.01/$accept?ac=777bea0e13cc9c42ceec14aec3ddee2263325dc2c6c699db115f58fe423607ea)
* insert ApoTelematikID(recipient.identifier)
* insert GKV_Identifier(sender.identifier)
* insert DateTimeStamp(sent)
* status = #unknown
* extension[flowType].valueCoding = https://gematik.de/fhir/erp/CodeSystem/GEM_ERP_CS_FlowType#160 "Muster 16 (Apothekenpflichtige Arzneimittel)"
* payload.contentString = "{ \"version\": 1, \"supplyOptionsType\": \"onPremise\", \"name\": \"Dr. Maximilian von Muster\", \"address\": [ \"wohnhaft bei Emilia Fischer\", \"Bundesallee 312\", \"123. OG\", \"12345 Berlin\" ], \"phone\": \"004916094858168\" }"