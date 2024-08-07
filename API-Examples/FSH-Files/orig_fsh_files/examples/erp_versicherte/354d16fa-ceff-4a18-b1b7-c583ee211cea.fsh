Instance: 354d16fa-ceff-4a18-b1b7-c583ee211cea
InstanceOf: Location
Usage: #inline
* meta.lastUpdated = "2021-10-12T11:54:29+02:00"
* contained.id = "8fe0eea1-6379-41ce-bb51-efd33f02e853"
* contained.resourceType = "HealthcareService"
* contained.active = true
* contained.coverageArea.extension.url = "https://ngda.de/fhir/extensions/ServiceCoverageRange"
* contained.coverageArea.extension.valueQuantity.value = 5000
* contained.coverageArea.extension.valueQuantity.unit = "m"
* contained.location.reference = "/Location/354d16fa-ceff-4a18-b1b7-c583ee211cea"
* contained.type = $service-type#498 "Mobile Services"
* address.use = #work
* address.type = #physical
* address.line = "Adlerstr. 21"
* address.postalCode = "10178"
* address.city = "Berlin"
* address.country = "de"
* hoursOfOperation[0].daysOfWeek = #mon
* hoursOfOperation[=].openingTime = "08:30:00"
* hoursOfOperation[=].closingTime = "13:30:00"
* hoursOfOperation[+].daysOfWeek = #mon
* hoursOfOperation[=].openingTime = "14:30:00"
* hoursOfOperation[=].closingTime = "18:30:00"
* hoursOfOperation[+].daysOfWeek = #tue
* hoursOfOperation[=].openingTime = "08:30:00"
* hoursOfOperation[=].closingTime = "13:30:00"
* hoursOfOperation[+].daysOfWeek = #tue
* hoursOfOperation[=].openingTime = "14:30:00"
* hoursOfOperation[=].closingTime = "18:30:00"
* hoursOfOperation[+].daysOfWeek = #wed
* hoursOfOperation[=].openingTime = "08:30:00"
* hoursOfOperation[=].closingTime = "13:30:00"
* hoursOfOperation[+].daysOfWeek = #wed
* hoursOfOperation[=].openingTime = "14:30:00"
* hoursOfOperation[=].closingTime = "18:30:00"
* hoursOfOperation[+].daysOfWeek = #thu
* hoursOfOperation[=].openingTime = "08:30:00"
* hoursOfOperation[=].closingTime = "13:30:00"
* hoursOfOperation[+].daysOfWeek = #thu
* hoursOfOperation[=].openingTime = "14:30:00"
* hoursOfOperation[=].closingTime = "18:30:00"
* hoursOfOperation[+].daysOfWeek = #fri
* hoursOfOperation[=].openingTime = "08:30:00"
* hoursOfOperation[=].closingTime = "13:30:00"
* hoursOfOperation[+].daysOfWeek = #fri
* hoursOfOperation[=].openingTime = "14:30:00"
* hoursOfOperation[=].closingTime = "18:30:00"
* hoursOfOperation[+].daysOfWeek = #sat
* hoursOfOperation[=].openingTime = "08:30:00"
* hoursOfOperation[=].closingTime = "14:00:00"
* identifier[0].system = "https://gematik.de/fhir/sid/telematik-id"
* identifier[=].value = "3-10.2.0123456100.10.228"
* identifier[+].system = "https://ngda.de/fhir/NamingSystem/NID"
* identifier[=].value = "APO1234642"
* name = "Apotheke am Adler"
* position.latitude = 52.523044
* position.longitude = 13.411917
* status = #active
* telecom[0].system = #phone
* telecom[=].value = "030/400410"
* telecom[+].system = #email
* telecom[=].value = "erezept@gematik.de"
* telecom[+].system = #url
* telecom[=].value = "https://www.gematik.de"
* type[0] = $v3-RoleCode#PHARM "pharmacy"
* type[+] = $v3-RoleCode#OUTPHARM "outpatient pharmacy"