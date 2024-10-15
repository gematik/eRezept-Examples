Instance: erp-chargeItem-09-GET-ChargeItem-Response
InstanceOf: Bundle
Usage: #example
* type = #collection
* timestamp = "2023-04-21T07:12:31.692+00:00"
* entry[0].fullUrl = "https://erp-dev.zentral.erp.splitdns.ti-dienste.de/ChargeItem/200.000.001.944.091.20"
* entry[=].resource = 200.000.001.944.091.20-1
* entry[+].fullUrl = "urn:uuid:c81baa1d-0000-0000-0004-000000000000"
* entry[=].resource = f1909de6-7d21-443b-a2ae-230b9cb62f70-1
* entry[+].fullUrl = "urn:uuid:c81baa1d-0000-0000-0001-000000000000"
* entry[=].resource = d9a98ce4-9585-4031-ba85-3719bf0fc14a
* entry[+].fullUrl = "urn:uuid:c81baa1d-0000-0000-0003-000000000000"
* entry[=].resource = Inline-Instance-for-cb0a5768-ed8f-47c3-ab25-88752a6c5be8-1

Instance: 200.000.001.944.091.20-1
InstanceOf: ChargeItem
Usage: #inline
* meta.profile = "https://gematik.de/fhir/erpchrg/StructureDefinition/GEM_ERPCHRG_PR_ChargeItem|1.0"
* identifier[0].system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_AccessCode"
* identifier[=].value = "ed71f87b69ebe913fb8b138e61036c76fd05dd8416263050e33e99365de23f48"
* identifier[+].system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
* identifier[=].value = "200.000.001.944.091.20"
* status = #billable
* code = $data-absent-reason#not-applicable
* subject.identifier.system = "http://fhir.de/sid/gkv/kvid-10"
* subject.identifier.value = "X110465770"
* enterer.identifier.system = "https://gematik.de/fhir/sid/telematik-id"
* enterer.identifier.value = "3-SMC-B-Testkarte-883110000116873"
* enteredDate = "2023-04-21T07:12:29.316+00:00"
* supportingInformation[0] = Reference(urn:uuid:c81baa1d-0000-0000-0001-000000000000) "https://fhir.kbv.de/StructureDefinition/KBV_PR_ERP_Bundle"
* supportingInformation[+] = Reference(urn:uuid:c81baa1d-0000-0000-0004-000000000000) "http://fhir.abda.de/eRezeptAbgabedaten/StructureDefinition/DAV-PKV-PR-ERP-AbgabedatenBundle"
* supportingInformation[+] = Reference(urn:uuid:c81baa1d-0000-0000-0003-000000000000) "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_PR_Bundle"

Instance: f1909de6-7d21-443b-a2ae-230b9cb62f70-1
InstanceOf: Bundle
Usage: #inline
* meta.lastUpdated = "2023-04-21T09:12:30.215+02:00"
* meta.profile = "http://fhir.abda.de/eRezeptAbgabedaten/StructureDefinition/DAV-PKV-PR-ERP-AbgabedatenBundle|1.1"
* meta.tag.display = "Dies ist ein unvollständiges Beispiel. Für die vollständige Darstellung bitte die entsprechenden Profile beachten."
* type = #document

Instance: d9a98ce4-9585-4031-ba85-3719bf0fc14a
InstanceOf: Bundle
Usage: #inline
* meta.lastUpdated = "2023-04-21T09:12:25.072+02:00"
* meta.profile = "https://fhir.kbv.de/StructureDefinition/KBV_PR_ERP_Bundle|1.1.0"
* meta.tag.display = "Dies ist ein unvollständiges Beispiel. Für die vollständige Darstellung bitte die entsprechenden Profile beachten."
* type = #document

Instance: Inline-Instance-for-cb0a5768-ed8f-47c3-ab25-88752a6c5be8-1
InstanceOf: Bundle
Usage: #inline
* insert PackageMetaProfile(StructureDefinition/GEM_ERP_PR_Bundle)
* meta.tag.display = "Dies ist ein unvollständiges Beispiel. Für die vollständige Darstellung bitte die entsprechenden Profile beachten."
* type = #document