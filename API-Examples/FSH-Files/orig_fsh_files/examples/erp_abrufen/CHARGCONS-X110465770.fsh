Instance: CHARGCONS-X110465770
InstanceOf: Consent
Usage: #inline
* meta.profile = "https://gematik.de/fhir/erpchrg/StructureDefinition/GEM_ERPCHRG_PR_Consent|1.0"
* status = #active
* scope.coding.system = $consentscope
* scope.coding.code = #patient-privacy
* scope.coding.display = "Privacy Consent"
//* scope = $consentscope#patient-privacy "Privacy Consent"
* category.coding.system = $GEM_ERPCHRG_CS_ConsentType
* category.coding.code = #CHARGCONS
* category.coding.display = "Consent for saving electronic charge item"
//* category = $GEM_ERPCHRG_CS_ConsentType#CHARGCONS "Consent for saving electronic charge item"
* patient.identifier.system = "http://fhir.de/sid/pkv/kvid-10"
* patient.identifier.value = "X110465770"
* dateTime = "2023-03-10T07:46:39.000+00:00"
* policyRule.coding.system = $v3-ActCode
* policyRule.coding.code = #OPTIN 
//* policyRule = $v3-ActCode#OPTIN