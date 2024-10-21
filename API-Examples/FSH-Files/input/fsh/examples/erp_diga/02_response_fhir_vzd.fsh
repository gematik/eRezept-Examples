Instance: erp-diga-02-response-fhir-vzd
InstanceOf: Bundle
Usage: #example
* meta.lastUpdated = "2024-07-02T12:57:06.425+02:00"
* type = #searchset
* total = 2
* entry[0].fullUrl = "https://fhir-directory-ref.vzd.ti-dienste.de/search/HealthcareService/f86e1f95-08f1-4651-aed5-dfd82ce2b05e"
* entry[=].resource = f86e1f95-08f1-4651-aed5-dfd82ce2b05e
* entry[=].search.mode = #match
* entry[+].fullUrl = "https://fhir-directory-ref.vzd.ti-dienste.de/search/Organization/235f4997-acea-41b3-85db-c54c4ffd2fc2"
* entry[=].resource = 235f4997-acea-41b3-85db-c54c4ffd2fc2
* entry[=].search.mode = #include

Instance: f86e1f95-08f1-4651-aed5-dfd82ce2b05e
InstanceOf: HealthcareService
Usage: #inline
* meta.versionId = "4"
* meta.lastUpdated = "2024-03-27T17:55:10.913+01:00"
* meta.profile = "https://gematik.de/fhir/directory/StructureDefinition/HealthcareServiceDirectory"
* meta.tag = $Origin#ldap "Synchronized from LDAP Directory"
* meta.tag.userSelected = false
* identifier.system = "https://gematik.de/fhir/directory/CodeSystem/ldapUID"
* identifier.value = "6f01ba0b-5d78-4bb1-a789-9a8be7f30ca3"
* providedBy = Reference(235f4997-acea-41b3-85db-c54c4ffd2fc2)
* location = Reference(Location/6ac29f34-f531-4fc2-b530-c1a9f143b1d1)

Instance: 235f4997-acea-41b3-85db-c54c4ffd2fc2
InstanceOf: Organization
Usage: #inline
* meta.versionId = "2"
* meta.lastUpdated = "2024-02-26T12:38:14.001+01:00"
* meta.source = "#2WkZQ3ZhfsTF9vgi"
* meta.profile = "https://gematik.de/fhir/directory/StructureDefinition/OrganizationDirectory"
* meta.tag = $Origin#ldap "Synchronized from LDAP Directory"
* meta.tag.userSelected = false
* identifier[0].type = $v2-0203#PRN
* identifier[=].system = "https://gematik.de/fhir/sid/telematik-id"
* identifier[=].value = "8-01-0000000232"
* identifier[+].system = "http://fhir.de/StructureDefinition/identifier-iknr"
* identifier[=].value = "107815761"
* identifier[+].system = "https://gematik.de/fhir/directory/CodeSystem/ldapUID"
* identifier[=].value = "6f01ba0b-5d78-4bb1-a789-9a8be7f30ca3"
* active = true
* type = $OrganizationProfessionOID#1.2.276.0.76.4.59 "Betriebsstätte Kostenträger"
* name = "AOK Baden-Württemberg"
* alias = "AOK Baden-Württemberg NOT-VALID"