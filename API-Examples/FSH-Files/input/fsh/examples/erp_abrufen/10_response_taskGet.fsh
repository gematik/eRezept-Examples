Instance: erp-abrufen-10-response-taskGet
InstanceOf: Bundle
Usage: #example
* meta.lastUpdated = "2020-03-13T07:31:34.328+00:00"
* type = #collection
* entry[0].fullUrl = "https://erp.zentral.erp.splitdns.ti-dienste.de/Task/160.123.456.789.123.58"
* entry[=].resource = 160.123.456.789.123.58-1
* entry[+].fullUrl = "urn:uuid:dffbfd6a-5712-4798-bdc8-07201eb77ab8"
* entry[=].resource = Inline-Instance-for-dffbfd6a-5712-4798-bdc8-07201eb77ab8-3

Instance: 160.123.456.789.123.58-1
InstanceOf: Task
Usage: #inline
* meta.versionId = "2"
* meta.lastUpdated = "2020-02-18T10:05:05.038+00:00"
* insert PackageMetaProfile(StructureDefinition/GEM_ERP_PR_Task)
* extension[0].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_PrescriptionType"
* extension[=].valueCoding = $GEM_ERP_CS_FlowType#160 "Muster 16 (Apothekenpflichtige Arzneimittel)"
* extension[+].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_ExpiryDate"
* extension[=].valueDate = "2020-06-02"
* extension[+].url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_AcceptDate"
* extension[=].valueDate = "2020-04-01"
* identifier[0].use = #official
* identifier[=].system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* identifier[=].value = "160.123.456.789.123.58"
* identifier[+].use = #official
* identifier[=].system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_AccessCode"
* identifier[=].value = "777bea0e13cc9c42ceec14aec3ddee2263325dc2c6c699db115f58fe423607ea"
* identifier[+].system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_Secret"
* identifier[=].value = "c36ca26502892b371d252c99b496e31505ff449aca9bc69e231c58148f6233cf"
* status = #completed
* intent = #order
* for.identifier.system = "http://fhir.de/sid/gkv/kvid-10"
* for.identifier.value = "X123456789"
* authoredOn = "2020-03-02T08:25:05+00:00"
* lastModified = "2020-03-02T08:45:05+00:00"
* performerType = $GEM_ERP_CS_OrganizationType#urn:oid:1.2.276.0.76.4.54 "Öffentliche Apotheke"
* input.type = $GEM_ERP_CS_DocumentType#1
* input.valueReference = Reference(urn:oid:281a985c-f25b-4aae-91a6-41ad744080b0)
* output.type = $GEM_ERP_CS_DocumentType#3
* output.valueReference = Reference(urn:oid:dffbfd6a-5712-4798-bdc8-07201eb77ab8)

Instance: Inline-Instance-for-dffbfd6a-5712-4798-bdc8-07201eb77ab8-3
InstanceOf: Bundle
Usage: #inline
* id = "dffbfd6a-5712-4798-bdc8-07201eb77ab8"
* insert PackageMetaProfile(StructureDefinition/GEM_ERP_PR_Bundle)
* meta.tag.display = "ePrescription receipt"
* identifier.system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* identifier.value = "160.123.456.789.123.58"
* type = #document
* timestamp = "2020-03-20T07:31:34.328+00:00"
* entry[0].fullUrl = "urn:uuid:ec72f89f-2c84-4907-9a09-4bed0911e6e1"
* entry[=].resource.resourceType = "Composition"
* entry[=].resource.id = "ec72f89f-2c84-4907-9a09-4bed0911e6e1"
* entry[=].resource.meta.profile = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_PR_Composition|1.3"
* entry[=].resource.extension.url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_Beneficiary"
* entry[=].resource.extension.valueIdentifier.system = "https://gematik.de/fhir/sid/telematik-id"
* entry[=].resource.extension.valueIdentifier.value = "3-SMC-B-Testkarte-883110000129070"
* entry[=].resource.status = #final
* entry[=].resource.type = $GEM_ERP_CS_DocumentType#3
* entry[=].resource.date = "2020-03-20T07:31:34.328+00:00"
* entry[=].resource.author.reference = "urn:uuid:b6fcc694-994f-40fa-968e-77a477bcc0b8"
* entry[=].resource.title = "Quittung"
* entry[=].resource.event.period.start = "2020-03-20T07:23:34.328+00:00"
* entry[=].resource.event.period.end = "2020-03-20T07:31:34.328+00:00"
* entry[=].resource.section.entry.reference = "urn:uuid:47decbcb-a411-4298-8b61-eab2374c818a"
* entry[+].fullUrl = "urn:uuid:b6fcc694-994f-40fa-968e-77a477bcc0b8"
* entry[=].resource.resourceType = "Device"
* entry[=].resource.id = "1"
//* entry[=].resource.meta.profile = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_PR_Device|1.3"
* insert EntryResourcePackage(StructureDefinition/GEM_ERP_PR_Device)
* entry[=].resource.status = #active
* entry[=].resource.serialNumber = "R4.0.0.287342834"
* entry[=].resource.deviceName.name = "E-Rezept-Fachdienst"
* entry[=].resource.deviceName.type = #user-friendly-name
* entry[=].resource.version.value = "1.0.0"
* entry[+].fullUrl = "urn:uuid:47decbcb-a411-4298-8b61-eab2374c818a"
* entry[=].resource.resourceType = "Binary"
* entry[=].resource.id = "47decbcb-a411-4298-8b61-eab2374c818a"
//* entry[=].resource.meta.profile = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_PR_Digest|1.3"
* insert EntryResourcePackage(StructureDefinition/GEM_ERP_PR_Digest)
* entry[=].resource.contentType = #application/octet-stream
* entry[=].resource.data = "hcjUMWK000GMe4zsJtNu+00hM7f9yHWp7ewiMeXy6KY="
* signature.type = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.1
* signature.when = "2020-03-20T07:31:34.328+00:00"
* signature.who = Reference(urn:uuid:b6fcc694-994f-40fa-968e-77a477bcc0b8)
* signature.sigFormat = #application/pkcs7-mime
* signature.data = "QXVmZ3J1bmQgZGVyIENvcm9uYS1TaXR1YXRpb24ga29ubnRlIGhpZXIga3VyemZyaXN0aWcga2VpbiBCZWlzcGllbCBpbiBkZXIgTGFib3J1bWdlYnVuZyBkZXIgZ2VtYXRpayBlcnN0ZWxsdCB3ZWRlbi4gRGllc2VzIHdpcmQgbmFjaGdlcmVpY2h0LgoKSW5oYWx0bGljaCB1bmQgc3RydWt0dXJlbGwgaXN0IGRpZSBTZXJ2ZXJzaWduYXR1ciBkZXIgUXVpdHR1bmcgZWluZSBFbnZlbG9waW5nIENBZEVTLVNpZ25hdHVyLCBkaWUgZGVuIHNpZ25pZXJ0ZW4gRGF0ZW5zYXR6IGFuYWxvZyB6dXIgS29ubmVrdG9yLVNpZ25hdHVyIGlubmVyaGFsYiBkZXMgQVNOMS5Db250YWluZXJzIHRyYW5zcG9ydGllcnQu"