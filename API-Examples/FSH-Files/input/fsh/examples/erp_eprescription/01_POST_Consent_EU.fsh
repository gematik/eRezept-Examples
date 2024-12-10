Instance: erp-eprescription-01-POST-Consent
InstanceOf: GEM_ERPEU_PR_Consent
Title: "Example for a Consent to redeem EU Prescritptions"
Usage: #example
* meta.id = "Consent-erp-eprescription-01-POST-Consent"
* scope = $cs-consent-scope#patient-privacy "Privacy Consent"
* category = GEM_ERPEU_CS_ConsentType#EUDISPCONS "Consent for redeeming e-prescriptions in EU countries"
* insert GKV_Identifier(patient.identifier.value)
* insert GKV_Identifier_System(patient.identifier.system)
* policyRule = v3-ActCode#OPTIN

Instance: erp-eprescription-01-POST-Consent-Response
InstanceOf: GEM_ERPEU_PR_Consent
Title: "Example for a Consent to redeem EU Prescritptions"
Usage: #example
* id = "6bd784b8-6595-42ea-8201-c34354efa857"
* meta.id = "Consent-erp-eprescription-01-POST-Consent-Response"
* scope = $cs-consent-scope#patient-privacy "Privacy Consent"
* category = GEM_ERPEU_CS_ConsentType#EUDISPCONS "Consent for redeeming e-prescriptions in EU countries"
* insert GKV_Identifier(patient.identifier.value)
* insert GKV_Identifier_System(patient.identifier.system)
* insert DateTime(dateTime)
* policyRule = v3-ActCode#OPTIN