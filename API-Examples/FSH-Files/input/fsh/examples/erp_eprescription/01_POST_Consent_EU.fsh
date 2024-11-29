Instance: erp-eprescription-01-POST-Consent
InstanceOf: GEM_ERP_PR_Consent
Title: "Example for a Consent to redeem EU Prescritptions"
Usage: #example
* scope = $cs-consent-scope#patient-privacy "Privacy Consent"
* category = GEM_ERP_CS_ConsentType#EUDISPCONS "Consent for redeeming e-prescriptions in EU countries"
* insert GKV_Identifier(patient.identifier.value)
* insert GKV_Identifier_System(patient.identifier.system)
* insert DateTime(dateTime)
* policyRule = v3-ActCode#OPTIN