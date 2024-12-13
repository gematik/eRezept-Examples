Instance: erp-eprescription-08-response-get-single-medicationdispense
InstanceOf: Bundle
Usage: #example
* type = #searchset
* insert DateTimeStamp(timestamp)
* total = 0
* link.relation = "self"
* link.url = "https://erp-ref.zentral.erp.splitdns.ti-dienste.de/MedicationDispense?identifier=160.000.000.000.000.01"
* entry[0].fullUrl = "https://erp-ref.zentral.erp.splitdns.ti-dienste.de/MedicationDispense/160.000.000.000.000.01"
* entry[=].resource = Example-MedicationDispense-EU
* entry[=].search.mode = #match
* entry[+].fullUrl = "https://erp-ref.zentral.erp.splitdns.ti-dienste.de/Practitioner/a7adde1a-af5c-4814-8fea-e46e7e63ed07"
* entry[=].resource = Example-EU-Practitioner
* entry[=].search.mode = #include
* entry[+].fullUrl = "https://erp-ref.zentral.erp.splitdns.ti-dienste.de/PractitionerRole/ebe39d92-276b-436d-a9ea-9dd5e042637b"
* entry[=].resource = Example-EU-PractitionerRole
* entry[=].search.mode = #include
* entry[+].fullUrl = "https://erp-ref.zentral.erp.splitdns.ti-dienste.de/Organization/6a3c8c57-0870-476e-90e3-25b7562799d3"
* entry[=].resource = Example-EU-Organization
* entry[=].search.mode = #include
* entry[+].fullUrl = "https://erp-ref.zentral.erp.splitdns.ti-dienste.de/Medication/7c342123-ca23-4a98-a5c2-b2005ceece45"
* entry[=].resource = EU-SumatripanMedication
* entry[=].search.mode = #include
* entry[0].fullUrl = "https://erp-ref.zentral.erp.splitdns.ti-dienste.de/MedicationDispense/160.000.000.000.000.02"
* entry[=].resource = 06-response-get-multiple-medication-dispense-1
* entry[=].search.mode = #match
* entry[+].fullUrl = "https://erp-ref.zentral.erp.splitdns.ti-dienste.de/Medication/e25e68d2-8aa4-4fb4-8498-68d9856f8ec3"
* entry[=].resource = e25e68d2-8aa4-4fb4-8498-68d9856f8ec3
* entry[=].search.mode = #include

Instance: EU-SumatripanMedication
InstanceOf: GEM_ERP_PR_Medication
Usage: #inline
* id = "7c342123-ca23-4a98-a5c2-b2005ceece45"
* insert SumatripanMedication