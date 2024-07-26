<img width="200" height="37" src="../../images/Gematik_Logo_Flag_With_Background.png"/> <br/>

# List of known validation errors 

This folder contains examples that throw errors when validated with a validator. Below is the list as well as the reason related to the specific file.

Please note that the list only includes XML and JSON files.

| **File** | **Reason** |
|------|--------|
|[authentisieren/01_request_ReadCardCertificate.xml](authentisieren/01_request_ReadCardCertificate.xml)|Not a FHIR resource|
|[authentisieren/02_response_ReadCardCertificate.xml](authentisieren/02_response_ReadCardCertificate.xml)|Not a FHIR resource|
|[authentisieren/03_request_VerifyCertificate.xml](authentisieren/03_request_VerifyCertificate.xml)|Not a FHIR resource|
|[authentisieren/04_response_VerifyCertificate.xml](authentisieren/04_response_VerifyCertificate.xml)|Not a FHIR resource
|[authentisieren/05_request_ExternalAuthenticate.xml](authentisieren/05_request_ExternalAuthenticate.xml)|Not a FHIR resource|
|[authentisieren/06_response_ExternalAuthenticate.xml](authentisieren/06_response_ExternalAuthenticate.xml)|Not a FHIR resource|
|[authentisieren/07_response_InnerVau.json](authentisieren/07_response_InnerVau.json)|Includes extra information/comments in the file|
|[certificate_check/01_response_certList.json](certificate_check/01_response_certList.json)|Not a FHIR resource|
|[certificate_check/02_response_ocspList.json](certificate_check/02_response_ocspList.json)|Not a FHIR resource|
|[certificate_check/03_response_pkicertificates.json](certificate_check/03_response_pkicertificates.json)|Not a FHIR resource|
|[erp_abrufen/01_response_taskAccept.xml](erp_abrufen/01_response_taskAccept.xml)|Includes extra information/comments in the file|
|[erp_abrufen/02_response_taskAcceptWithConsent.xml](erp_abrufen/02_response_taskAcceptWithConsent.xml)|TODO: Investigate|
|[erp_abrufen/03_request_recovery_secret.xml](erp_abrufen/03_request_recovery_secret.xml)|The Binary.data value is incomplete and therefore not a valid Base64 value|
|[erp_abrufen/04_request_VerifySignatureTask.xml](erp_abrufen/04_request_VerifySignatureTask.xml)|Not a FHIR resource|
|[erp_abrufen/05_response_VerifySignatureTask.xml](erp_abrufen/05_response_VerifySignatureTask.xml)|Not a FHIR resource|
|[erp_abrufen/09_response_taskClose.xml](erp_abrufen/09_response_taskClose.xml)|The signature is incomplete and therefore not a valid Base64 value|
|[erp_abrufen/10_response_taskGet.xml](erp_abrufen/10_response_taskGet.xml)|Includes extra information/comments in the file|
|[erp_abrufen_egk/01_GetCards.xml](erp_abrufen_egk/01_GetCards.xml)|Not a FHIR resource|
|[erp_abrufen_egk/02_GetCards_Response.xml](erp_abrufen_egk/02_GetCards_Response.xml)|Not a FHIR resource|
|[erp_abrufen_egk/03_ReadVSD.xml](erp_abrufen_egk/03_ReadVSD.xml)|Not a FHIR resource|
|[erp_abrufen_egk/04_ReadVSD_Response.xml](erp_abrufen_egk/04_ReadVSD_Response.xml)|Not a FHIR resource|
|[erp_alternative_zuweisung/01_sign_avs_request.xml](erp_alternative_zuweisung/01_sign_avs_request.xml)|Not a FHIR resource|
|[erp_alternative_zuweisung/02_sign_avs_response.xml](erp_alternative_zuweisung/02_sign_avs_response.xml)|Not a FHIR resource|
|[erp_alternative_zuweisung/04_url_in_apovzd.json](erp_alternative_zuweisung/04_url_in_apovzd.json)|Not a FHIR resource|
|[erp_alternative_zuweisung/05_message_from_fdv.json](erp_alternative_zuweisung/05_message_from_fdv.json)|Not a FHIR resource|
|[erp_alternative_zuweisung/07_decrypt_request.xml](erp_alternative_zuweisung/07_decrypt_request.xml)|Not a FHIR resource|
|[erp_bereitstellen/01_response_taskCreate.xml](erp_bereitstellen/01_response_taskCreate.xml)|TODO: Investigate|
|[erp_bereitstellen/02_Prescription_bundle.xml](erp_bereitstellen/02_Prescription_bundle.xml)|TODO: Investigate|
|[erp_bereitstellen/03_request_SignDocument.xml](erp_bereitstellen/03_request_SignDocument.xml)|Not a FHIR resource|
|[erp_bereitstellen/04_response_SignDocument.xml](erp_bereitstellen/04_response_SignDocument.xml)|Not a FHIR resource|
|[erp_bereitstellen/05_response_taskActivate.xml](erp_bereitstellen/05_response_taskActivate.xml)|Includes extra information/comments in the file|
|[erp_chargeItem/01_request_SignDocument_Abgabedaten.xml](erp_chargeItem/01_request_SignDocument_Abgabedaten.xml)|Not a FHIR resource|
|[erp_chargeItem/02_response_SignDocument_Abgabedaten.xml](erp_chargeItem/02_response_SignDocument_Abgabedaten.xml)|Not a FHIR resource|
|[erp_chargeItem/03_POST_ChargeItem_Request.xml](erp_chargeItem/03_POST_ChargeItem_Request.xml)|The Binary.data value is incomplete and therefore not a valid Base64 value|
|[erp_chargeItem/05_GET_ChargeItem_Response.xml](erp_chargeItem/05_GET_ChargeItem_Response.xml)|TODO: Investigate|
|[erp_chargeItem/06_PUT_ChargeItem_Request.xml](erp_chargeItem/06_PUT_ChargeItem_Request.xml)|The Binary.data value is incomplete and therefore not a valid Base64 value|
|[erp_chargeItem/09_GET_ChargeItem_Response.json](erp_chargeItem/09_GET_ChargeItem_Response.json)|Incomplete FHIR resource to allow better readability|
|[erp_chargeItem/11_PATCH_ChargeItem_Response.json](erp_chargeItem/11_PATCH_ChargeItem_Response.json)|TODO: Investigate|
|[erp_communication/07_response_GetMessages.json](erp_communication/07_response_GetMessages.json)|TODO: Investigate|
|[erp_communication/08_response_GetAllMessages.xml](erp_communication/08_response_GetAllMessages.xml)|Incomplete FHIR resource to allow better readability|
|[erp_consent/01_request_PostConsent.json](erp_consent/01_request_PostConsent.json)|TODO: Investigate|
|[erp_consent/02_response_PostConsent.json](erp_consent/02_response_PostConsent.json)|Includes extra information/comments in the file|
|[erp_consent/03_response_GetConsent.json](erp_consent/03_response_GetConsent.json)|Includes extra information/comments in the file|
|[erp_notification_avs/01_request_PostSubscriptionPseudo.xml](erp_notification_avs/01_request_PostSubscriptionPseudo.xml)|Includes extra information/comments in the file|
|[erp_notification_avs/02_response_PostSubscriptionPseudo.xml](erp_notification_avs/02_response_PostSubscriptionPseudo.xml)|Includes extra information/comments in the file|
|[erp_steuerung_durch_le/02_response_taskCreate169.xml](erp_steuerung_durch_le/02_response_taskCreate169.xml)|Includes extra information/comments in the file|
|[erp_steuerung_durch_le/03_request_taskActivate169.xml](erp_steuerung_durch_le/03_request_taskActivate169.xml)|The Binary.data value is incomplete and therefore not a valid Base64 value|
|[erp_steuerung_durch_le/04_response_taskActivate169.xml](erp_steuerung_durch_le/04_response_taskActivate169.xml)|Includes extra information/comments in the file|
|[erp_steuerung_durch_le/08_response_taskGet169Versicherter.json](erp_steuerung_durch_le/08_response_taskGet169Versicherter.json)|Includes extra information/comments in the file|
|[erp_versicherte/02_response_taskGetSingle.json](erp_versicherte/02_response_taskGetSingle.json)|Incomplete FHIR resource to allow better readability|
|[erp_versicherte/03_response_GetLocation.json](erp_versicherte/03_response_GetLocation.json)|TODO: Investigate|
|[misc_api_endpoints/CapabilityStatement_RU.xml](misc_api_endpoints/CapabilityStatement_RU.xml)|Not a FHIR resource|