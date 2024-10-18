Instance: erp-consent-01-request-PostConsent
InstanceOf: Consent
Usage: #example
* meta.profile = "https://gematik.de/fhir/erpchrg/StructureDefinition/GEM_ERPCHRG_PR_Consent|1.0"
* status = #active
* scope = $consentscope#patient-privacy "Privacy Consent"
* category = $GEM_ERPCHRG_CS_ConsentType#CHARGCONS "Consent for saving electronic charge item"
* patient.identifier.type = $identifier-type-de-basis#PKV
* patient.identifier.system = "http://fhir.de/sid/pkv/kvid-10"
* patient.identifier.value = "X234567890"
* dateTime = "2023-08-01T07:13:00+05:00"
* policyRule = $v3-ActCode#OPTIN