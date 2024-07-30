Instance: erp-diga-03-communication-zuweisung-diga
InstanceOf: Communication
Usage: #example
* meta.profile = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_PR_Communication_DispReq|1.4"
* meta.tag.display = "Communication message sent by patient to pharmacy to request the dispensation of medicine by providing the AccessCode"
* status = #unknown
* extension.url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_PrescriptionType"
* extension.valueCoding = $GEM_ERP_CS_FlowType#162 "Muster 16 (Digitale Gesundheitsanwendungen)"
* recipient.identifier.system = "https://gematik.de/fhir/sid/telematik-id"
* recipient.identifier.value = "8-01-0000000232"
* basedOn = Reference(Task/162.000.033.491.280.78/$accept?ac=777bea0e13cc9c42ceec14aec3ddee2263325dc2c6c699db115f58fe423607ea)
* sender.identifier.system = "http://fhir.de/sid/gkv/kvid-10"
* sender.identifier.value = "X234567890"
* sent = "2025-03-02T13:44:30.128+02:00"