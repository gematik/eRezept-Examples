Instance: 200.000.001.213.340.73
InstanceOf: Task
Usage: #inline
* meta.profile = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_PR_Task|1.3"
* extension[0].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_PrescriptionType"
* extension[=].valueCoding = $GEM_ERP_CS_FlowType#200 "PKV (Apothekenpflichtige Arzneimittel)"
* extension[+].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_ExpiryDate"
* extension[=].valueDate = "2023-06-10"
* extension[+].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_AcceptDate"
* extension[=].valueDate = "2023-06-10"
* identifier[0].use = #official
* identifier[=].system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* identifier[=].value = "200.000.001.213.340.73"
* identifier[+].use = #official
* identifier[=].system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_AccessCode"
* identifier[=].value = "8532d3accd0b23fe7f780161c4cf8d4ddab3ce028c1ad22f61bbea5720f60dec"
* identifier[+].use = #official
* identifier[=].system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_Secret"
* identifier[=].value = "e761743e424b3199e7e432b256075a82efb0e8ca9ec2db162b29872d9e54ddc4"
* status = #in-progress
* intent = #order
* for.identifier.system = "http://fhir.de/sid/pkv/kvid-10"
* for.identifier.value = "X110465770"
* authoredOn = "2023-03-10T07:46:41.430+00:00"
* lastModified = "2023-03-10T07:46:42.381+00:00"
* performerType = $GEM_ERP_CS_OrganizationType#urn:oid:1.2.276.0.76.4.54 "Öffentliche Apotheke"
* performerType.text = "Öffentliche Apotheke"
* input.type = $GEM_ERP_CS_DocumentType#1
* input.valueReference = Reference(Binary/c89c8312-0000-0000-0001-000000000000)