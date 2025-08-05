Instance: erp-diga-03-communication-zuweisung-diga
InstanceOf: GEM_ERP_PR_Communication_DispReq
Usage: #example
* basedOn = Reference(Task/162.000.000.000.000.01/$accept?ac=777bea0e13cc9c42ceec14aec3ddee2263325dc2c6c699db115f58fe423607ea)
* status = #unknown
* extension[flowType].valueCoding = https://gematik.de/fhir/erp/CodeSystem/GEM_ERP_CS_FlowType#162
* insert KTRTelematikID(recipient.identifier)