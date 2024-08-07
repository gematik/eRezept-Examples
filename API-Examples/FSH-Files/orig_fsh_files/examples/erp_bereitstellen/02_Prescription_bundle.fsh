Instance: erp-bereitstellen-02-Prescription-Bundle
InstanceOf: Bundle
Usage: #example
//* fhir_comments = " Beispiel-Bundle Wirkstoffverordnung "
* meta.lastUpdated = "2020-05-04T08:30:00Z"
* meta.profile = "https://fhir.kbv.de/StructureDefinition/KBV_PR_ERP_Bundle|1.0.1"
* identifier.system = "https://gematik.de/fhir/NamingSystem/PrescriptionID"
* identifier.value = "160.123.456.789.123.58"
* type = #document
* timestamp = "2020-05-04T08:30:00Z"
* entry[0].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/Composition/b0e22b86-e7e9-46c1-80fe-e6e24442d77c"
* entry[=].resource = b0e22b86-e7e9-46c1-80fe-e6e24442d77c
* entry[+].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/MedicationRequest/f58f4403-7a3a-4a12-bb15-b2fa25b02561"
* entry[=].resource = f58f4403-7a3a-4a12-bb15-b2fa25b02561
* entry[+].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/Medication/e3a4efa7-84fc-465b-b14c-720195097783"
* entry[=].resource = e3a4efa7-84fc-465b-b14c-720195097783
* entry[+].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/Patient/9774f67f-a238-4daf-b4e6-679deeef3811"
* entry[=].resource = 9774f67f-a238-4daf-b4e6-679deeef3811
* entry[+].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/Practitioner/20597e0e-cb2a-45b3-95f0-dc3dbdb617c3"
* entry[=].resource = 20597e0e-cb2a-45b3-95f0-dc3dbdb617c3
* entry[+].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/Practitioner/d8463daf-258e-4cad-a86a-6fd42fac161c"
* entry[=].resource = d8463daf-258e-4cad-a86a-6fd42fac161c
* entry[+].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/Organization/cf042e44-086a-4d51-9c77-172f9a972e3b"
* entry[=].resource = cf042e44-086a-4d51-9c77-172f9a972e3b
* entry[+].fullUrl = "http://pvs.praxis-topp-gluecklich.local/fhir/Coverage/1b1ffb6e-eb05-43d7-87eb-e7818fe9661a"
* entry[=].resource = 1b1ffb6e-eb05-43d7-87eb-e7818fe9661a