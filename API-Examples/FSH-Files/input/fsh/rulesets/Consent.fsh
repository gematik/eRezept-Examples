RuleSet: Consent
* status = #active
* scope = $consentscope#patient-privacy "Privacy Consent"
* category = $GEM_ERPCHRG_CS_ConsentType#CHARGCONS "Consent for saving electronic charge item"
* policyRule = $v3-ActCode#OPTIN
* insert PKV_Identifier(patient.identifier.value)
* insert DateTime(dateTime)