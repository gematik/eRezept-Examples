Instance: erp-bereitstellen-01-response-taskCreate
InstanceOf: GEM_ERP_PR_Task
Usage: #example
* id = "160.000.000.000.000.01"
* meta.id = "Task-erp-bereitstellen-01-response-taskCreate"
* status = #draft
* extension[flowType].valueCoding = $GEM_ERP_CS_FlowType#160 "Muster 16 (Apothekenpflichtige Arzneimittel)"
* insert TaskIdentifier(160)
* insert TaskIdentifierAccessCode
* insert TaskMiscInfo
* performerType = $GEM_ERP_CS_OrganizationType#urn:oid:1.2.276.0.76.4.54 "Öffentliche Apotheke"
* performerType.text = "Öffentliche Apotheke"