Instance: erp-abrufen-egk-05-Response-Task
InstanceOf: Bundle
Usage: #example
* type = #searchset
* timestamp = "2023-05-16T07:03:18.844+00:00"
* total = 2
* entry[0].fullUrl = "https://erp-dev.zentral.erp.splitdns.ti-dienste.de/Task/160.000.036.967.704.52"
* entry[=].resource = 160.000.036.967.704.52
* entry[=].search.mode = #match
* entry[+].fullUrl = "https://erp-dev.zentral.erp.splitdns.ti-dienste.de/Task/160.000.036.968.008.13"
* entry[=].resource = 160.000.036.968.008.13
* entry[=].search.mode = #match

Instance: 160.000.036.967.704.52
InstanceOf: Task
Usage: #inline
* meta.profile = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_PR_Task|1.3"
* extension[0].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_PrescriptionType"
* extension[=].valueCoding.system = $GEM_ERP_CS_FlowType
* extension[=].valueCoding.code = #160
* extension[=].valueCoding.display = "Muster 16 (Apothekenpflichtige Arzneimittel)"
//* extension[=].valueCoding = $Flowtype#160 "Muster 16 (Apothekenpflichtige Arzneimittel)"
* extension[+].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_ExpiryDate"
* extension[=].valueDate = "2023-07-11"
* extension[+].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_AcceptDate"
* extension[=].valueDate = "2023-05-09"
* identifier[0].use = #official
* identifier[=].system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* identifier[=].value = "160.000.036.967.704.52"
* identifier[+].use = #official
* identifier[=].system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_AccessCode"
* identifier[=].value = "eb6002c60dffdfb742002bf44f9f72326de3dddfe2271ab64a21a6cb0f168bbf"
* status = #ready
* intent = #order
* for.identifier.system = "http://fhir.de/sid/gkv/kvid-10"
* for.identifier.value = "T046142499"
* authoredOn = "2023-04-11T09:10:16.519+00:00"
* lastModified = "2023-04-11T09:10:18.926+00:00"
* performerType.coding.system = "https://gematik.de/fhir/erp/CodeSystem/GEM_ERP_CS_OrganizationType"
* performerType.coding.code = #urn:oid:1.2.276.0.76.4.54
* performerType.coding.display = "Öffentliche Apotheke"
//* performerType = urn:ietf:rfc:3986#urn:oid:1.2.276.0.76.4.54 "Öffentliche Apotheke"
* performerType.text = "Öffentliche Apotheke"

Instance: 160.000.036.968.008.13
InstanceOf: Task
Usage: #inline
* meta.profile = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_PR_Task|1.3"
* extension[0].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_PrescriptionType"
* extension[=].valueCoding.system = $GEM_ERP_CS_FlowType
* extension[=].valueCoding.code = #160
* extension[=].valueCoding.display = "Muster 16 (Apothekenpflichtige Arzneimittel)"
//* extension[=].valueCoding = $Flowtype#160 "Muster 16 (Apothekenpflichtige Arzneimittel)"
* extension[+].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_ExpiryDate"
* extension[=].valueDate = "2023-07-12"
* extension[+].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_AcceptDate"
* extension[=].valueDate = "2023-05-10"
* identifier[0].use = #official
* identifier[=].system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* identifier[=].value = "160.000.036.968.008.13"
* identifier[+].use = #official
* identifier[=].system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_AccessCode"
* identifier[=].value = "16ba6a9a4440fbf815351fe7080572ab3ae9acbba404efa259074a56dac21725"
* status = #ready
* intent = #order
* for.identifier.system = "http://fhir.de/sid/gkv/kvid-10"
* for.identifier.value = "T046142499"
* authoredOn = "2023-04-12T06:42:30.913+00:00"
* lastModified = "2023-04-12T06:42:33.275+00:00"
* performerType.coding.system = "https://gematik.de/fhir/erp/CodeSystem/GEM_ERP_CS_OrganizationType"
* performerType.coding.code = #urn:oid:1.2.276.0.76.4.54
* performerType.coding.display = "Öffentliche Apotheke"
//* performerType = urn:ietf:rfc:3986#urn:oid:1.2.276.0.76.4.54 "Öffentliche Apotheke"
* performerType.text = "Öffentliche Apotheke"