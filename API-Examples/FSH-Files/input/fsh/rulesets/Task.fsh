RuleSet: Task160Exension
* extension[flowType].valueCoding = $GEM_ERP_CS_FlowType#160 "Muster 16 (Apothekenpflichtige Arzneimittel)"
* insert AcceptDate(extension[acceptDate].valueDate)
* insert ExpiryDate(extension[expiryDate].valueDate)

RuleSet: Task160Identifier
* identifier[PrescriptionID].value = "160.000.000.000.000.01"
* identifier[AccessCode].value = "777bea0e13cc9c42ceec14aec3ddee2263325dc2c6c699db115f58fe423607ea"
* identifier[Secret].value = "c36ca26502892b371d252c99b496e31505ff449aca9bc69e231c58148f6233cf"