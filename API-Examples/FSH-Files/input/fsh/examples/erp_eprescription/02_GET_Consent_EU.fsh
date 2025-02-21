Instance: erp-eprescription-02-GET-Consent-Bundle
InstanceOf: Bundle
Title: "Example for a Bundle with a Consent"
Usage: #example
* type = #searchset
* insert DateTimeStamp(timestamp)
* total = 1
* entry.fullUrl = "https://erp-dev.zentral.erp.splitdns.ti-dienste.de/Consent/e9b39f9c-0b70-4dd5-ada2-fea3cde2e340"
* entry.resource = erp-eprescription-02-GET-Consent

Instance: erp-eprescription-02-GET-Consent
InstanceOf: GEM_ERPEU_PR_Consent
Title: "Example for a Consent to redeem EU Prescritptions"
Usage: #inline
* id = "e9b39f9c-0b70-4dd5-ada2-fea3cde2e340"
* scope = $cs-consent-scope#patient-privacy "Privacy Consent"
* category = GEM_ERPEU_CS_ConsentType#EUDISPCONS "Consent for redeeming e-prescriptions in EU countries"
* insert GKV_Identifier(patient.identifier)
* insert DateTime(dateTime)
* policyRule = v3-ActCode#OPTIN