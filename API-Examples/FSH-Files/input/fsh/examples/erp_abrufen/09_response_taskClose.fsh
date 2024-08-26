Instance: erp-abrufen-09-response-taskClose
InstanceOf: Bundle
Usage: #example
* insert PackageMetaProfile(StructureDefinition/GEM_ERP_PR_Bundle)
* identifier.system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* identifier.value = "160.123.456.789.123.58"
* type = #document
* timestamp = "2021-11-26T09:51:36.483+00:00"
* link.relation = "self"
* link.url = "https://erp-ref.zentral.erp.splitdns.ti-dienste.de/Task/160.123.456.789.123.58/$close/"
* entry[0].fullUrl = "urn:uuid:c624cf47-e235-4624-af71-0a09dc9254dc"
* entry[=].resource = c624cf47-e235-4624-af71-0a09dc9254dc
* entry[+].fullUrl = "urn:uuid:65ea903d-b3ea-4b5e-acbd-3e8c2c695542"
* entry[=].resource = 1
* entry[+].fullUrl = "urn:uuid:073ef818-3d18-4cf0-a5b7-9321ec838f94"
* entry[=].resource = 073ef818-3d18-4cf0-a5b7-9321ec838f94
* signature.type = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.1
* signature.when = "2021-11-26T09:51:36.484+00:00"
* signature.who = Reference(https://erp.zentral.erp.splitdns.ti-dienste.de/Device/1)
* signature.sigFormat = #application/pkcs7-mime
* signature.data = "RGllcyBpc3QgZWluIEJlaXNwaWVs"

Instance: c624cf47-e235-4624-af71-0a09dc9254dc
InstanceOf: Composition
Usage: #inline
* insert PackageMetaProfile(StructureDefinition/GEM_ERP_PR_Composition)
* extension.url = "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_Beneficiary"
* extension.valueIdentifier.system = "https://gematik.de/fhir/sid/telematik-id"
* extension.valueIdentifier.value = "3-SMC-B-Testkarte-883110000129070"
* status = #final
* type = $GEM_ERP_CS_DocumentType#3 "Receipt"
* date = "2021-11-26T09:51:36.483+00:00"
* author = Reference(urn:uuid:65ea903d-b3ea-4b5e-acbd-3e8c2c695542)
* title = "Quittung"
* event.period.start = "2021-11-26T09:48:36.483+00:00"
* event.period.end = "2021-11-26T09:51:36.483+00:00"
* section.entry = Reference(urn:uuid:073ef818-3d18-4cf0-a5b7-9321ec838f94)

Instance: 1
InstanceOf: Device
Usage: #inline
* insert PackageMetaProfile(StructureDefinition/GEM_ERP_PR_Device)
* status = #active
* serialNumber = "1.4.0"
* deviceName.name = "E-Rezept-Fachdienst"
* deviceName.type = #user-friendly-name
* version.value = "1.4.0"
* contact.system = #email
* contact.value = "betrieb@gematik.de"

Instance: 073ef818-3d18-4cf0-a5b7-9321ec838f94
InstanceOf: http://hl7.org/fhir/StructureDefinition/Binary|4.0.1
Usage: #inline
* contentType = #application/octet-stream
* data = "tJg8c5ZtdhzEEhJ0ZpAsUVFx5dKuYgQFs5oKgthi17M="