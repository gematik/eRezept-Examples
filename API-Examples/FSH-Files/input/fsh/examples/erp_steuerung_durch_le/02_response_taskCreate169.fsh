Instance: erp-steuerung-durch-le-02-response-taskCreate169
InstanceOf: Task
Usage: #example
* meta.profile = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_PR_Task|1.3"
* extension[0].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_PrescriptionType"
* extension[=].valueCoding = $GEM_ERP_CS_FlowType#169 "Muster 16 (Direkte Zuweisung)"
* extension[+].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_AcceptDate"
* extension[=].valueDate = "2022-06-30"
* extension[+].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_ExpiryDate"
* extension[=].valueDate = "2022-06-30"
* identifier[0].system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* identifier[=].value = "169.000.004.839.514.95"
* identifier[+].system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_AccessCode"
* identifier[=].value = "777bea0e13cc9c42ceec14aec3ddee2263325dc2c6c699db115f58fe423607ea"
* status = #draft
* intent = #order
* authoredOn = "2022-03-18T15:26:00+00:00"
* performerType = $GEM_ERP_CS_OrganizationType#urn:oid:1.2.276.0.76.4.54 "Öffentliche Apotheke"