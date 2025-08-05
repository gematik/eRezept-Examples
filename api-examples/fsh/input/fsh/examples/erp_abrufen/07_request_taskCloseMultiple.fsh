Instance: erp-abrufen-07-request-taskCloseMultiple
InstanceOf: GEM_ERP_PR_PAR_CloseOperation_Input
Usage: #example
* parameter[rxDispensation][+]
  * part[medicationDispense][+]
    * resource = a3ddc2b1-826d-4b81-87b2-558834e00f50
  * part[medication][+]
    * resource = SumatripanMedication
* parameter[rxDispensation][+]
  * part[medicationDispense][+]
    * resource = 854b6c62-8c8a-4ad6-b145-d5bac5f9f010
  * part[medication][+]
    * resource = FlusarionMedication

Instance: a3ddc2b1-826d-4b81-87b2-558834e00f50
InstanceOf: GEM_ERP_PR_MedicationDispense
Usage: #inline
* identifier[prescriptionID].value = "160.000.000.000.000.01"
* status = #completed
* medicationReference = Reference(SumatripanMedication)
* insert GKV_Identifier(subject.identifier)
* insert ApoTelematikID(performer.actor.identifier)
* insert Date(whenHandedOver)

Instance: 854b6c62-8c8a-4ad6-b145-d5bac5f9f010
InstanceOf: GEM_ERP_PR_MedicationDispense
Usage: #inline
* identifier[prescriptionID].value = "160.000.000.000.000.02"
* status = #completed
* medicationReference = Reference(FlusarionMedication)
* insert GKV_Identifier(subject.identifier)
* insert ApoTelematikID(performer.actor.identifier)
* insert Date(whenHandedOver)

