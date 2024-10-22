Instance: erp-abrufen-03-request-recovery-secret
InstanceOf: Bundle
Usage: #example
* type = #collection
* insert DateTimeStamp(timestamp)
* link.relation = "self"
* link.url = "https://erp-ref.zentral.erp.splitdns.ti-dienste.de/Task/160.000.000.000.000.01"
* entry[0].fullUrl = "https://erp-ref.zentral.erp.splitdns.ti-dienste.de/Task/160.000.000.000.000.01"
* entry[=].resource = Inline-Instance-for-cb8b3d4b-be1b-4934-89a4-9ac3fa9fdfa0-1
* entry[+].fullUrl = "urn:uuid:281a985c-f25b-4aae-91a6-41ad744080b0"
* entry[=].resource = 281a985c-f25b-4aae-91a6-41ad744080b0

Instance: Inline-Instance-for-cb8b3d4b-be1b-4934-89a4-9ac3fa9fdfa0-1
InstanceOf: GEM_ERP_PR_Task
Usage: #inline
* id = "160.000.000.000.000.01"
* insert PackageMetaProfile(StructureDefinition/GEM_ERP_PR_Task)
* insert GKV_Task
* status = #in-progress
* owner.identifier.system = "https://gematik.de/fhir/sid/telematik-id"
* owner.identifier.value = "3-2-APO-XanthippeVeilchenblau01"
* insert TaskInputQES(281a985c-f25b-4aae-91a6-41ad744080b0)

Instance: 281a985c-f25b-4aae-91a6-41ad744080b0
InstanceOf: GEM_ERP_PR_Binary
Usage: #inline
* insert PackageMetaProfile(StructureDefinition/GEM_ERP_PR_Binary)
* data = "RGllcyBpc3QgZWluIEJlaXNwaWVs"