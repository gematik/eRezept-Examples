Instance: erp-eprescription-05-GET-Prescription-Bundle
InstanceOf: Bundle
Usage: #example
* insert DateTimeStamp(timestamp)
* type = #collection
* link[+]
  * relation = "self"
  * url = "https://erp-ref.zentral.erp.splitdns.ti-dienste.de/Prescription"
* entry[0].fullUrl = "https://erp.zentral.erp.splitdns.ti-dienste.de/Task/160.000.000.000.000.01"
* entry[=].resource = erp-eprescription-05-Prescription-Bundle-1
* entry[+].fullUrl = "https://erp.zentral.erp.splitdns.ti-dienste.de/Task/160.000.000.000.000.02"
* entry[=].resource = erp-eprescription-05-Prescription-Bundle-2

Instance: erp-eprescription-05-Prescription-Bundle-1
InstanceOf: KBV_PR_ERP_Bundle
Usage: #inline
* insert GKV_VerordnungsDatensatz(160.000.000.000.000.01)

Instance: erp-eprescription-05-Prescription-Bundle-2
InstanceOf: KBV_PR_ERP_Bundle
Usage: #inline
* insert GKV_VerordnungsDatensatz(160.000.000.000.000.02)