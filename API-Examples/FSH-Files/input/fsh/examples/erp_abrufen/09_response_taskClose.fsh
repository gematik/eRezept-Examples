Instance: erp-abrufen-09-response-taskClose
InstanceOf: GEM_ERP_PR_Bundle
Usage: #example
* id = "dffbfd6a-5712-4798-bdc8-07201eb77ab8"
* identifier.value = "160.000.000.000.000.01"
* insert DateTimeStamp(timestamp)
* link.relation = "self"
* link.url = "https://erp-ref.zentral.erp.splitdns.ti-dienste.de/Task/160.000.000.000.000.01/$close/"
* entry[DocumentInformation].fullUrl = "urn:uuid:c624cf47-e235-4624-af71-0a09dc9254dc"
* entry[DocumentInformation].resource = c624cf47-e235-4624-af71-0a09dc9254dc
* entry[SigningDevice].fullUrl = "urn:uuid:65ea903d-b3ea-4b5e-acbd-3e8c2c695542"
* entry[SigningDevice].resource = 1
* entry[PrescriptionDigest].fullUrl = "urn:uuid:073ef818-3d18-4cf0-a5b7-9321ec838f94"
* entry[PrescriptionDigest].resource = 073ef818-3d18-4cf0-a5b7-9321ec838f94
* signature = GEM-ERP-PR-Signature

Instance: GEM-ERP-PR-Signature
InstanceOf: GEM_ERP_PR_Signature
Usage: #inline
* type[AuthorsSignature].system = "urn:iso-astm:E1762-95:2013"
* type[AuthorsSignature].code = #1.2.840.10065.1.12.1.1
* insert DateTimeStamp(when)
* who = Reference(Device/1)
* sigFormat = urn:ietf:bcp:13#application/pkcs7-mime
* data = "RGllcyBpc3QgZWluIEJlaXNwaWVs"

Instance: c624cf47-e235-4624-af71-0a09dc9254dc
InstanceOf: GEM_ERP_PR_Composition
Usage: #inline
* extension[Beneficiary].valueIdentifier.value = "3-SMC-B-Testkarte-883110000129070"
* type = $GEM_ERP_CS_DocumentType#3 "Receipt"
* insert DateTimeStamp(date)
* author = Reference(urn:uuid:65ea903d-b3ea-4b5e-acbd-3e8c2c695542)
* insert DateTimeStamp(event.period.start)
* insert DateTimeStampPlus1hr(event.period.end)
* section.entry = Reference(urn:uuid:073ef818-3d18-4cf0-a5b7-9321ec838f94)

Instance: 1
InstanceOf: GEM_ERP_PR_Device
Usage: #inline
* insert PackageMetaProfile(StructureDefinition/GEM_ERP_PR_Device)
* status = #active
* insert FachdienstVersion(serialNumber)
* insert FachdienstVersion(version.value)
* deviceName.name = "E-Rezept-Fachdienst"
* deviceName.type = #user-friendly-name
* contact.system = #email
* contact.value = "betrieb@gematik.de"

Instance: 073ef818-3d18-4cf0-a5b7-9321ec838f94
InstanceOf: GEM_ERP_PR_Digest
Usage: #inline
* data = "tJg8c5ZtdhzEEhJ0ZpAsUVFx5dKuYgQFs5oKgthi17M="