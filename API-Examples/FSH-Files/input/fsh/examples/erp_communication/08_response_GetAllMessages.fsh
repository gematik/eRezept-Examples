Instance: erp-communication-08-response-GetAllMessages
InstanceOf: Bundle
Usage: #example
* meta.lastUpdated = "2020-04-13T07:11:18.245+00:00"
* type = #searchset
* total = 391
* link[0].relation = "self"
* link[=].url = "https://erp.zentral.erp.splitdns.ti-dienste.de/Communication?_format=html%2Fxml&_sort=sent&sent=gt2020-04-01&sent=lt2020-04-30"
* link[+].relation = "next"
* link[=].url = "https://erp.zentral.erp.splitdns.ti-dienste.de?_getpages=48829c84-7ad7-4834-8362-2c2c109379b1&_getpagesoffset=50&_count=50&_bundletype=searchset"
* entry.fullUrl = "https://erp.zentral.erp.splitdns.ti-dienste.de/Communication/d6e013c3-656f-43c4-9ca6-4cd46ffeb37e"
* entry.resource = erp-communication-08-request-RezeptZuweisen
* entry.search.mode = #match

Instance: erp-communication-08-request-RezeptZuweisen
InstanceOf: Communication
Usage: #example
* insert PackageMetaProfile(StructureDefinition/GEM_ERP_PR_Communication_DispReq)
* id = "d6e013c3-656f-43c4-9ca6-4cd46ffeb37e"
* basedOn = Reference(Task/160.123.456.789.123.58/$accept?ac=777bea0e13cc9c42ceec14aec3ddee2263325dc2c6c699db115f58fe423607ea)
* status = #unknown
* recipient.identifier.system = "https://gematik.de/fhir/sid/telematik-id"
* recipient.identifier.value = "3-1.54.10123404"
* payload.contentString = "{ \"version\": 1, \"supplyOptionsType\": \"onPremise\", \"name\": \"Dr. Maximilian von Muster\", \"address\": [ \"wohnhaft bei Emilia Fischer\", \"Bundesallee 312\", \"123. OG\", \"12345 Berlin\" ], \"phone\": \"004916094858168\" }"