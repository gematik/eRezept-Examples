RuleSet: Task160Exension
* extension[flowType].valueCoding = $GEM_ERP_CS_FlowType#160 "Muster 16 (Apothekenpflichtige Arzneimittel)"
* insert AcceptDate(extension[acceptDate].valueDate)
* insert ExpiryDate(extension[expiryDate].valueDate)

RuleSet: Task200Exension
* extension[flowType].valueCoding = $GEM_ERP_CS_FlowType#200 "PKV (Apothekenpflichtige Arzneimittel)"
* insert AcceptDate(extension[acceptDate].valueDate)
* insert ExpiryDate(extension[expiryDate].valueDate)

RuleSet: TaskIdentifier(flowType)
* identifier[PrescriptionID].value = "{flowType}.000.000.000.000.01"
* identifier[AccessCode].value = "777bea0e13cc9c42ceec14aec3ddee2263325dc2c6c699db115f58fe423607ea"
* identifier[Secret].value = "c36ca26502892b371d252c99b496e31505ff449aca9bc69e231c58148f6233cf"

RuleSet: TaskMiscInfo
* insert DateTime(authoredOn)
* insert DateTimeStamp(lastModified)
* performerType = $GEM_ERP_CS_OrganizationType#urn:oid:1.2.276.0.76.4.54 "Öffentliche Apotheke"

RuleSet: TaskInputQES(ref)
* input[ePrescription].type = $GEM_ERP_CS_DocumentType#1 "Health Care Provider Prescription"
* input[ePrescription].valueReference = Reference({ref})

RuleSet: TaskInputReceipt(ref)
* input[patientReceipt].type = $GEM_ERP_CS_DocumentType#2 "Receipt"
* input[patientReceipt].valueReference = Reference({ref})

RuleSet: GKV_Identifier(field)
* {field} = "X123456789"

RuleSet: PKV_Identifier(field)
* {field} = "P987654321"

RuleSet: GKV_Task
* insert Task160Exension
* insert TaskIdentifier(160)
* insert GKV_Identifier(for.identifier.value)
* insert TaskMiscInfo

RuleSet: PKV_Task
* insert Task200Exension
* insert TaskIdentifier(200)
* insert PKV_Identifier(for.identifier.value)
* insert TaskMiscInfo