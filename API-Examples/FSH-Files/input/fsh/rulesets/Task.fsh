RuleSet: TaskExension(flowType)
* extension[flowType].valueCoding = $GEM_ERP_CS_FlowType#{flowType}
* insert AcceptDate(extension[acceptDate].valueDate)
* insert ExpiryDate(extension[expiryDate].valueDate)

RuleSet: Task162Exension
* extension[flowType].valueCoding = $GEM_ERP_CS_FlowType#162 "Muster 16 (Digitale Gesundheitsanwendungen)"
* insert DiGAExpiryDate(extension[acceptDate].valueDate) // Expiry, weil so festgelegt beide Daten 3 Monate
* insert DiGAExpiryDate(extension[expiryDate].valueDate)

RuleSet: TaskIdentifier(flowType)
* identifier[PrescriptionID].value = "{flowType}.000.000.000.000.01"
* identifier[AccessCode].value = "777bea0e13cc9c42ceec14aec3ddee2263325dc2c6c699db115f58fe423607ea"

RuleSet: TaskSecret
* identifier[Secret].value = "c36ca26502892b371d252c99b496e31505ff449aca9bc69e231c58148f6233cf"

RuleSet: TaskMiscInfo
* insert DateTime(authoredOn)
* insert DateTimeStamp(lastModified)

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

RuleSet: ApoTelematikID(field)
* {field} = "3-2-APO-XanthippeVeilchenblau01"

RuleSet: KTRTelematikID(field)
* {field} = "8-SMC-B-Testkarte-883110000116873"

RuleSet: GKV_Task(status)
* status = #{status}
* insert TaskExension(160)
* insert TaskIdentifier(160)
* insert GKV_Identifier(for.identifier.value)
* insert TaskMiscInfo
* performerType = $GEM_ERP_CS_OrganizationType#urn:oid:1.2.276.0.76.4.54 "Öffentliche Apotheke"

RuleSet: DiGA_Task(status)
* status = #{status}
* insert Task162Exension
* insert TaskIdentifier(162)
* insert GKV_Identifier(for.identifier.value)
* insert TaskMiscInfo
* performerType = $GEM_ERP_CS_OrganizationType#urn:oid:1.2.276.0.76.4.59 "Kostenträger"

RuleSet: PKV_Task(status)
* status = #{status}
* insert TaskExension(200)
* insert TaskIdentifier(200)
* insert PKV_Identifier(for.identifier.value)
* insert TaskMiscInfo
* performerType = $GEM_ERP_CS_OrganizationType#urn:oid:1.2.276.0.76.4.54 "Öffentliche Apotheke"

RuleSet: WF169_Task(status)
* status = #{status}
* insert TaskExension(169)
* insert TaskIdentifier(169)
* insert GKV_Identifier(for.identifier.value)
* insert TaskMiscInfo
* performerType = $GEM_ERP_CS_OrganizationType#urn:oid:1.2.276.0.76.4.54 "Öffentliche Apotheke"
