Instance: CHARGCONS-X234567890
InstanceOf: Consent
Usage: #inline
* meta.profile = "https://gematik.de/fhir/erpchrg/StructureDefinition/GEM_ERPCHRG_PR_Consent|1.0"
* status = #active
* scope = $consentscope#patient-privacy "Privacy Consent"
* category = $GEM_ERPCHRG_CS_ConsentType#CHARGCONS "Saving electronic charge item."
* patient.identifier.type = $identifier-type-de-basis#PKV
* patient.identifier.system = "http://fhir.de/sid/pkv/kvid-10"
* patient.identifier.value = "X234567890"
* dateTime = "2023-08-01T07:13:00+00:00"
* policyRule = $v3-ActCode#OPTIN