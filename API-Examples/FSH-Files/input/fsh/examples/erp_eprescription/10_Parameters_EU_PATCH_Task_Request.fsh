Instance: erp-eprescription-10-PATCH-Task-Request
InstanceOf: Parameters //TODO: Set Profile
Usage: #example
* meta.profile = "https://gematik.de/fhir/erp/GEM_ERP_PR_PAR_PATCH_Task_Input|1.0" (exactly)
//TODO: set * parameter[eu-isRedeemableByPatientAuthorization]
* parameter[+]
  * name = "eu-isRedeemableByPatientAuthorization"
  * valueBoolean = true

