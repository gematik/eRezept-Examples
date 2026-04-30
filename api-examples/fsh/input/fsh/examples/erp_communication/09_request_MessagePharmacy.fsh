Instance: erp-communication-09-request-MessagePharmacy
InstanceOf: GEM_ERP_PR_Communication_DispReq
Usage: #example
* basedOn = Reference(Task/160.000.000.000.000.01/$accept?ac=777bea0e13cc9c42ceec14aec3ddee2263325dc2c6c699db115f58fe423607ea)
* insert ApoTelematikID(recipient.identifier)
* status = #unknown
* extension[flowType].valueCoding = https://gematik.de/fhir/erp/CodeSystem/GEM_ERP_CS_FlowType#160 "Muster 16 (Apothekenpflichtige Arzneimittel)"
* payload.contentString = "{ \"transactionID\": \"ABCD-EFGH-IJKL-MNOP\", \"version\": 3, \"communicationType\": \"text\", \"text\": \"Gibt es noch Traubenzucker?\", \"phone\": \"004916094858168\" }"