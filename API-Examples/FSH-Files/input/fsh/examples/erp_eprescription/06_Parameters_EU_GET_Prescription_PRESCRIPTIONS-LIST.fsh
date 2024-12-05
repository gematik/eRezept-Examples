Instance: erp-eprescription-06-GET-Prescription-PRESCRIPTIONS-LIST
InstanceOf: GEM_ERP_PR_PAR_EU_GET_Prescription_EU_Input
Usage: #example
Title: "Example EU-GET Prescription Parameters"
* parameter[requestData]
  * name = "requestData"
  * part[requesttype]
    * name = "requesttype"
    * valueCoding = GEM_ERP_CS_RequestType_EU#e-prescriptions-list
  * part[kvnr]
    * name = "kvnr"
    * valueIdentifier.value = "X123456789"
  * part[accessCode]
    * name = "accessCode"
    * valueIdentifier.value = "123456"
  * part[countryCode]
    * name = "countryCode"
    * valueCoding.code = #BE
  * part[practitionerName]
    * name = "practitionerName"
    * valueString = "Pedro Sanches"
  * part[practitionerRole]
    * name = "practitionerRole"
    * valueCoding = urn:oid:2.16.840.1.113883.2.9.6.2.7#2262 "Pharmacists"
  * part[pointOfCare]
    * name = "pointOfCare"
    * valueString = "Pharmacia de Santa Maria"
  * part[healthcare-facility-type]
    * name = "healthcare-facility-type"
    * valueCoding = $cs-organization-profession-oid#1.2.276.0.76.4.54 "Öffentliche Apotheke"
