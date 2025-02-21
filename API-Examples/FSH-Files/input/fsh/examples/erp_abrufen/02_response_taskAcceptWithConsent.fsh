Instance: erp-abrufen-02-response-taskAcceptWithConsent
InstanceOf: Bundle
Usage: #example
* type = #collection
* insert DateTimeStamp(timestamp)
* link.relation = "self"
* link.url = "https://erp-dev.zentral.erp.splitdns.ti-dienste.de/Task/200.000.000.000.000.01/$accept/"
* entry[0].fullUrl = "https://erp-dev.zentral.erp.splitdns.ti-dienste.de/Task/200.000.000.000.000.01"
* entry[=].resource = 200.000.000.000.000.01
* entry[+].fullUrl = "urn:uuid:c89c8312-0000-0000-0001-000000000000"
* entry[=].resource = Inline-Instance-for-f6af166c-36f1-4e0d-9cf9-1bc5051270f6-1
* entry[+].fullUrl = "https://erp-dev.zentral.erp.splitdns.ti-dienste.de/Consent/CHARGCONS-P987654321"
* entry[=].resource = CHARGCONS-P987654321

Instance: 200.000.000.000.000.01
InstanceOf: GEM_ERP_PR_Task
Usage: #inline
* insert PKV_Task(in-progress)
* insert TaskIdentifierAccessCode
* insert TaskInputQES(c89c8312-0000-0000-0001-000000000000)

Instance: CHARGCONS-P987654321
InstanceOf: GEM_ERPCHRG_PR_Consent
Usage: #inline
* status = #active
* scope.coding = $consentscope#patient-privacy "Privacy Consent"
* category = $GEM_ERPCHRG_CS_ConsentType#CHARGCONS "Consent for saving electronic charge item"
* insert PKV_Identifier(patient.identifier)
* insert DateTime(dateTime)
* policyRule = $v3-ActCode#OPTIN

Instance: Inline-Instance-for-f6af166c-36f1-4e0d-9cf9-1bc5051270f6-1
InstanceOf: GEM_ERP_PR_Binary
Usage: #inline
* id = "c89c8312-0000-0000-0001-000000000000"
* meta.versionId = "1"
* data = "MII6bAYJKoZIhvcNAQcCoII6XTCCOlkCAQExDTALBglghkgBZQMEAgEwgis9BgkqhkiG9w0BBwGggisuBIIrKjxCdW5kbGUgeG1sbnM9Imh0dHA6Ly9obDcub3JnL2ZoaXIiPjxpZCB2YWx1ZT0iMjYwMGQzNmEtY2JkZi00NWExLThiNmYtYWQ3ZjdiNzY3OGFiIi8+PG1ldGE+PGxhc3RVcGRhdGVkIHZhbHVlPSIyMDIzLTAzLTEwVDA4OjQ2OjQwLjYxOSswMTowMCIvPjxwcm9maWxlIHZhbHVlPSJodHRwczovL2ZoaXIua2J2LmRlL1N0cnVjdHVyZURlZmluaXRpb24vS0JWX1BSX0VSUF9CdW5kbGV8MS4xLjAiLz48L21ldGE+PGlkZW50aWZpZXI+PHN5c3RlbSB2YWx1ZT0iaHR0cHM6Ly9nZW1hdGlrLmRlL2ZoaXIvZXJwL05hbWluZ1N5c3RlbS9HRU1fRVJQX05TX1ByZXNjcmlwdGlvbklkIi8+PHZhbHVlIHZhbHVlPSIyMDAuMDAwLjAwMS4yMTMuMzQwLjczIi8+PC9pZGVudGlmaWVyPjx0eXBlIHZhbHVlPSJkb2N1bWVudCIvPjx0aW1lc3RhbXAgdmFsdWU9IjIwMjMtMDMtMTBUMDg6NDY6NDAuNjE5KzAxOjAwIi8+PGVudHJ5PjxmdWxsVXJsIHZhbHVlPSJodHRwczovL3B2cy5nZW1hdGlrLmRlL2ZoaXIvQ29tcG9zaXRpb24vZWExZGMxYzgtMGU3NS00NzM3LWEwMWQtMWU2OTVjNDM2NjllIi8+PHJlc291cmNlPjxDb21wb3NpdGlvbiB4bWxucz0iaHR0cDovL2hsNy5vcmcvZmhpciI+PGlkIHZhbHVlPSJlYTFkYzFjOC0wZTc1LTQ3MzctYTAxZC0xZTY5NWM0MzY2OWUiLz48bWV0YT48cHJvZmlsZSB2YWx1ZT0iaHR0cHM6Ly9maGlyLmtidi5kZS9TdHJ1Y3R1cmVEZWZpbml0aW9uL0tCVl9QUl9FUlBfQ29tcG9zaXRpb258MS4xLjAiLz48L21ldGE+PGV4dGVuc2lvbiB1cmw9Imh0dHBzOi8vZmhpci5rYnYuZGUvU3RydWN0dXJlRGVmaW5pdGlvbi9LQlZfRVhfRk9SX1BLVl9UYXJpZmYiPjx2YWx1ZUNvZGluZz48c3lzdGVtIHZhbHVlPSJodHRwczovL2ZoaXIua2J2LmRlL0NvZGVTeXN0ZW0vS0JWX0NTX1NGSElSX0tCVl9QS1ZfVEFSSUZGIi8+PGNvZGUgdmFsdWU9IjAzIi8+PC92YWx1ZUNvZGluZz48L2V4dGVuc2lvbj48ZXh0ZW5zaW9uIHVybD0iaHR0cHM6Ly9maGlyLmtidi5kZS9TdHJ1Y3R1cmVEZWZpbml0aW9uL0tCVl9FWF9GT1JfTGVnYWxfYmFzaXMiPjx2YWx1ZUNvZGluZz48c3lzdGVtIHZhbHVlPSJodHRwczovL2ZoaXIua2J2LmRlL0NvZGVTeXN0ZW0vS0JWX0NTX1NGSElSX0tCVl9TVEFUVVNLRU5OWkVJQ0hFTiIvPjxjb2RlIHZhbHVlPSIwMCIvPjwvdmFsdWVDb2Rpbmc+PC9leHRlbnNpb24+PHN0YXR1cyB2YWx1ZT0iZmluYWwiLz48dHlwZT48Y29kaW5nPjxzeXN0ZW0gdmFsdWU9Imh0dHBzOi8vZmhpci5rYnYuZGUvQ29kZVN5c3RlbS9LQlZfQ1NfU0ZISVJfS0JWX0ZPUk1VTEFSX0FSVCIvPjxjb2RlIHZhbHVlPSJlMTZBIi8+PC9jb2Rpbmc+PC90eXBlPjxzdWJqZWN0PjxyZWZlcmVuY2UgdmFsdWU9IlBhdGllbnQvZTYyNzRjMDUtZjYzYy00ZWExLTljM2ItMzgzNDBlY2JjYTZjIi8+PC9zdWJqZWN0PjxkYXRlIHZhbHVlPSIyMDIzLTAzLTEwVDA4OjQ2OjQwKzAxOjAwIi8+PGF1dGhvcj48cmVmZXJlbmNlIHZhbHVlPSJQcmFjdGl0aW9uZXIvODllMzY3MTItOWFiMS00Y2I2LWFhN2ItMjkxMjNjZDQ5OWUzIi8+PHR5cGUgdmFsdWU9IlByYWN0aXRpb25lciIvPjwvYXV0aG9yPjxhdXRob3I+PHR5cGUgdmFsdWU9IkRldmljZSIvPjxpZGVudGlmaWVyPjxzeXN0ZW0gdmFsdWU9Imh0dHBzOi8vZmhpci5rYnYuZGUvTmFtaW5nU3lzdGVtL0tCVl9OU19GT1JfUHJ1ZWZudW1tZXIiLz48dmFsdWUgdmFsdWU9IkdFTUFUSUsvNDEwLzIxMDkvMzYvMTIzIi8+PC9pZGVudGlmaWVyPjwvYXV0aG9yPjx0aXRsZSB2YWx1ZT0iZWxla3Ryb25pc2NoZSBBcnpuZWltaXR0ZWx2ZXJvcmRudW5nIi8+PGN1c3RvZGlhbj48cmVmZXJlbmNlIHZhbHVlPSJPcmdhbml6YXRpb24vOWVkOGY3MDYtNDc0NS00ZmU0LThlOGQtOTBjZjVmODkwOWMxIi8+PC9jdXN0b2RpYW4+PHNlY3Rpb24+PGNvZGU+PGNvZGluZz48c3lzdGVtIHZhbHVlPSJodHRwczovL2ZoaXIua2J2LmRlL0NvZGVTeXN0ZW0vS0JWX0NTX0VSUF9TZWN0aW9uX1R5cGUiLz48Y29kZSB2YWx1ZT0iQ292ZXJhZ2UiLz48L2NvZGluZz48L2NvZGU+PGVudHJ5PjxyZWZlcmVuY2UgdmFsdWU9IkNvdmVyYWdlLzBjYWE2YzVhLWUzYWUtNGIyNi1iNWI2LWU2ZDEyZjUzNWJlNiIvPjwvZW50cnk+PC9zZWN0aW9uPjxzZWN0aW9uPjxjb2RlPjxjb2Rpbmc+PHN5c3RlbSB2YWx1ZT0iaHR0cHM6Ly9maGlyLmtidi5kZS9Db2RlU3lzdGVtL0tCVl9DU19FUlBfU2VjdGlvbl9UeXBlIi8+PGNvZGUgdmFsdWU9IlByZXNjcmlwdGlvbiIvPjwvY29kaW5nPjwvY29kZT48ZW50cnk+PHJlZmVyZW5jZSB2YWx1ZT0iTWVkaWNhdGlvblJlcXVlc3QvNWMzZjNjNTAtZTg4Ny00OGJiLWFlOTItMTMxNDY3MGQ4MjljIi8+PC9lbnRyeT48L3NlY3Rpb24+PC9Db21wb3NpdGlvbj48L3Jlc291cmNlPjwvZW50cnk+PGVudHJ5PjxmdWxsVXJsIHZhbHVlPSJodHRwczovL3B2cy5nZW1hdGlrLmRlL2ZoaXIvTWVkaWNhdGlvblJlcXVlc3QvNWMzZjNjNTAtZTg4Ny00OGJiLWFlOTItMTMxNDY3MGQ4MjljIi8+PHJlc291cmNlPjxNZWRpY2F0aW9uUmVxdWVzdCB4bWxucz0iaHR0cDovL2hsNy5vcmcvZmhpciI+PGlkIHZhbHVlPSI1YzNmM2M1MC1lODg3LTQ4YmItYWU5Mi0xMzE0NjcwZDgyOWMiLz48bWV0YT48cHJvZmlsZSB2YWx1ZT0iaHR0cHM6Ly9maGlyLmtidi5kZS9TdHJ1Y3R1cmVEZWZpbml0aW9uL0tCVl9QUl9FUlBfUHJlc2NyaXB0aW9ufDEuMS4wIi8+PC9tZXRhPjxleHRlbnNpb24gdXJsPSJodHRwczovL2ZoaXIua2J2LmRlL1N0cnVjdHVyZURlZmluaXRpb24vS0JWX0VYX0VSUF9CVkciPjx2YWx1ZUJvb2xlYW4gdmFsdWU9ImZhbHNlIi8+PC9leHRlbnNpb24+PGV4dGVuc2lvbiB1cmw9Imh0dHBzOi8vZmhpci5rYnYuZGUvU3RydWN0dXJlRGVmaW5pdGlvbi9LQlZfRVhfRVJQX0VtZXJnZW5jeVNlcnZpY2VzRmVlIj48dmFsdWVCb29sZWFuIHZhbHVlPSJmYWxzZSIvPjwvZXh0ZW5zaW9uPjxleHRlbnNpb24gdXJsPSJodHRwczovL2ZoaXIua2J2LmRlL1N0cnVjdHVyZURlZmluaXRpb24vS0JWX0VYX0VSUF9NdWx0aXBsZV9QcmVzY3JpcHRpb24iPjxleHRlbnNpb24gdXJsPSJLZW5uemVpY2hlbiI+PHZhbHVlQm9vbGVhbiB2YWx1ZT0iZmFsc2UiLz48L2V4dGVuc2lvbj48L2V4dGVuc2lvbj48ZXh0ZW5zaW9uIHVybD0iaHR0cHM6Ly9maGlyLmtidi5kZS9TdHJ1Y3R1cmVEZWZpbml0aW9uL0tCVl9FWF9GT1JfU3RhdHVzQ29QYXltZW50Ij48dmFsdWVDb2Rpbmc+PHN5c3RlbSB2YWx1ZT0iaHR0cHM6Ly9maGlyLmtidi5kZS9Db2RlU3lzdGVtL0tCVl9DU19GT1JfU3RhdHVzQ29QYXltZW50Ii8+PGNvZGUgdmFsdWU9IjAiLz48L3ZhbHVlQ29kaW5nPjwvZXh0ZW5zaW9uPjxzdGF0dXMgdmFsdWU9ImFjdGl2ZSIvPjxpbnRlbnQgdmFsdWU9Im9yZGVyIi8+PG1lZGljYXRpb25SZWZlcmVuY2U+PHJlZmVyZW5jZSB2YWx1ZT0iTWVkaWNhdGlvbi8wODkzNGVmMS1jZDQzLTRiZGItYTY2YS02YTkzY2QwY2Q4YjQiLz48L21lZGljYXRpb25SZWZlcmVuY2U+PHN1YmplY3Q+PHJlZmVyZW5jZSB2YWx1ZT0iUGF0aWVudC9lNjI3NGMwNS1mNjNjLTRlYTEtOWMzYi0zODM0MGVjYmNhNmMiLz48L3N1YmplY3Q+PGF1dGhvcmVkT24gdmFsdWU9IjIwMjMtMDMtMTAiLz48cmVxdWVzdGVyPjxyZWZlcmVuY2UgdmFsdWU9IlByYWN0aXRpb25lci84OWUzNjcxMi05YWIxLTRjYjYtYWE3Yi0yOTEyM2NkNDk5ZTMiLz48L3JlcXVlc3Rlcj48aW5zdXJhbmNlPjxyZWZlcmVuY2UgdmFsdWU9IkNvdmVyYWdlLzBjYWE2YzVhLWUzYWUtNGIyNi1iNWI2LWU2ZDEyZjUzNWJlNiIvPjwvaW5zdXJhbmNlPjxkb3NhZ2VJbnN0cnVjdGlvbj48ZXh0ZW5zaW9uIHVybD0iaHR0cHM6Ly9maGlyLmtidi5kZS9TdHJ1Y3R1cmVEZWZpbml0aW9uL0tCVl9FWF9FUlBfRG9zYWdlRmxhZyI+PHZhbHVlQm9vbGVhbiB2YWx1ZT0idHJ1ZSIvPjwvZXh0ZW5zaW9uPjx0ZXh0IHZhbHVlPSIxLTAtMC0wIi8+PC9kb3NhZ2VJbnN0cnVjdGlvbj48ZGlzcGVuc2VSZXF1ZXN0PjxxdWFudGl0eT48dmFsdWUgdmFsdWU9IjEiLz48c3lzdGVtIHZhbHVlPSJodHRwOi8vdW5pdHNvZm1lYXN1cmUub3JnIi8+PGNvZGUgdmFsdWU9IntQYWNrYWdlfSIvPjwvcXVhbnRpdHk+PC9kaXNwZW5zZVJlcXVlc3Q+PHN1YnN0aXR1dGlvbj48YWxsb3dlZEJvb2xlYW4gdmFsdWU9InRydWUiLz48L3N1YnN0aXR1dGlvbj48L01lZGljYXRpb25SZXF1ZXN0PjwvcmVzb3VyY2U+PC9lbnRyeT48ZW50cnk+PGZ1bGxVcmwgdmFsdWU9Imh0dHBzOi8vcHZzLmdlbWF0aWsuZGUvZmhpci9NZWRpY2F0aW9uLzA4OTM0ZWYxLWNkNDMtNGJkYi1hNjZhLTZhOTNjZDBjZDhiNCIvPjxyZXNvdXJjZT48TWVkaWNhdGlvbiB4bWxucz0iaHR0cDovL2hsNy5vcmcvZmhpciI+PGlkIHZhbHVlPSIwODkzNGVmMS1jZDQzLTRiZGItYTY2YS02YTkzY2QwY2Q4YjQiLz48bWV0YT48cHJvZmlsZSB2YWx1ZT0iaHR0cHM6Ly9maGlyLmtidi5kZS9TdHJ1Y3R1cmVEZWZpbml0aW9uL0tCVl9QUl9FUlBfTWVkaWNhdGlvbl9QWk58MS4xLjAiLz48L21ldGE+PGV4dGVuc2lvbiB1cmw9Imh0dHBzOi8vZmhpci5rYnYuZGUvU3RydWN0dXJlRGVmaW5pdGlvbi9LQlZfRVhfQmFzZV9NZWRpY2F0aW9uX1R5cGUiPjx2YWx1ZUNvZGVhYmxlQ29uY2VwdD48Y29kaW5nPjxzeXN0ZW0gdmFsdWU9Imh0dHA6Ly9zbm9tZWQuaW5mby9zY3QiLz48dmVyc2lvbiB2YWx1ZT0iaHR0cDovL3Nub21lZC5pbmZvL3NjdC85MDAwMDAwMDAwMDAyMDcwMDgvdmVyc2lvbi8yMDIyMDMzMSIvPjxjb2RlIHZhbHVlPSI3NjMxNTgwMDMiLz48ZGlzcGxheSB2YWx1ZT0iTWVkaWNpbmFsIHByb2R1Y3QgKHByb2R1Y3QpIi8+PC9jb2Rpbmc+PC92YWx1ZUNvZGVhYmxlQ29uY2VwdD48L2V4dGVuc2lvbj48ZXh0ZW5zaW9uIHVybD0iaHR0cHM6Ly9maGlyLmtidi5kZS9TdHJ1Y3R1cmVEZWZpbml0aW9uL0tCVl9FWF9FUlBfTWVkaWNhdGlvbl9DYXRlZ29yeSI+PHZhbHVlQ29kaW5nPjxzeXN0ZW0gdmFsdWU9Imh0dHBzOi8vZmhpci5rYnYuZGUvQ29kZVN5c3RlbS9LQlZfQ1NfRVJQX01lZGljYXRpb25fQ2F0ZWdvcnkiLz48Y29kZSB2YWx1ZT0iMDAiLz48L3ZhbHVlQ29kaW5nPjwvZXh0ZW5zaW9uPjxleHRlbnNpb24gdXJsPSJodHRwczovL2ZoaXIua2J2LmRlL1N0cnVjdHVyZURlZmluaXRpb24vS0JWX0VYX0VSUF9NZWRpY2F0aW9uX1ZhY2NpbmUiPjx2YWx1ZUJvb2xlYW4gdmFsdWU9ImZhbHNlIi8+PC9leHRlbnNpb24+PGV4dGVuc2lvbiB1cmw9Imh0dHA6Ly9maGlyLmRlL1N0cnVjdHVyZURlZmluaXRpb24vbm9ybWdyb2Vzc2UiPjx2YWx1ZUNvZGUgdmFsdWU9Ik5CIi8+PC9leHRlbnNpb24+PGNvZGU+PGNvZGluZz48c3lzdGVtIHZhbHVlPSJodHRwOi8vZmhpci5kZS9Db2RlU3lzdGVtL2lmYS9wem4iLz48Y29kZSB2YWx1ZT0iNTIxNjQ4MDgiLz48L2NvZGluZz48dGV4dCB2YWx1ZT0iU2NobWVyem1pdHRlbCIvPjwvY29kZT48Zm9ybT48Y29kaW5nPjxzeXN0ZW0gdmFsdWU9Imh0dHBzOi8vZmhpci5rYnYuZGUvQ29kZVN5c3RlbS9LQlZfQ1NfU0ZISVJfS0JWX0RBUlJFSUNIVU5HU0ZPUk0iLz48Y29kZSB2YWx1ZT0iVEFCIi8+PC9jb2Rpbmc+PC9mb3JtPjxhbW91bnQ+PG51bWVyYXRvcj48ZXh0ZW5zaW9uIHVybD0iaHR0cHM6Ly9maGlyLmtidi5kZS9TdHJ1Y3R1cmVEZWZpbml0aW9uL0tCVl9FWF9FUlBfTWVkaWNhdGlvbl9QYWNrYWdpbmdTaXplIj48dmFsdWVTdHJpbmcgdmFsdWU9IjEiLz48L2V4dGVuc2lvbj48dW5pdCB2YWx1ZT0iU3RrIi8+PC9udW1lcmF0b3I+PGRlbm9taW5hdG9yPjx2YWx1ZSB2YWx1ZT0iMSIvPjwvZGVub21pbmF0b3I+PC9hbW91bnQ+PC9NZWRpY2F0aW9uPjwvcmVzb3VyY2U+PC9lbnRyeT48ZW50cnk+PGZ1bGxVcmwgdmFsdWU9Imh0dHBzOi8vcHZzLmdlbWF0aWsuZGUvZmhpci9QYXRpZW50L2U2Mjc0YzA1LWY2M2MtNGVhMS05YzNiLTM4MzQwZWNiY2E2YyIvPjxyZXNvdXJjZT48UGF0aWVudCB4bWxucz0iaHR0cDovL2hsNy5vcmcvZmhpciI+PGlkIHZhbHVlPSJlNjI3NGMwNS1mNjNjLTRlYTEtOWMzYi0zODM0MGVjYmNhNmMiLz48bWV0YT48cHJvZmlsZSB2YWx1ZT0iaHR0cHM6Ly9maGlyLmtidi5kZS9TdHJ1Y3R1cmVEZWZpbml0aW9uL0tCVl9QUl9GT1JfUGF0aWVudHwxLjEuMCIvPjwvbWV0YT48aWRlbnRpZmllcj48dHlwZT48Y29kaW5nPjxzeXN0ZW0gdmFsdWU9Imh0dHA6Ly9maGlyLmRlL0NvZGVTeXN0ZW0vaWRlbnRpZmllci10eXBlLWRlLWJhc2lzIi8+PGNvZGUgdmFsdWU9IlBLViIvPjwvY29kaW5nPjwvdHlwZT48c3lzdGVtIHZhbHVlPSJodHRwOi8vZmhpci5kZS9zaWQvcGt2L2t2aWQtMTAiLz48dmFsdWUgdmFsdWU9IlgxMTA0NjU3NzAiLz48L2lkZW50aWZpZXI+PG5hbWU+PHVzZSB2YWx1ZT0ib2ZmaWNpYWwiLz48ZmFtaWx5IHZhbHVlPSJBbmdlcm3DpG5uIj48ZXh0ZW5zaW9uIHVybD0iaHR0cDovL2hsNy5vcmcvZmhpci9TdHJ1Y3R1cmVEZWZpbml0aW9uL2h1bWFubmFtZS1vd24tbmFtZSI+PHZhbHVlU3RyaW5nIHZhbHVlPSJBbmdlcm3DpG5uIi8+PC9leHRlbnNpb24+PC9mYW1pbHk+PGdpdmVuIHZhbHVlPSJHw7xudGhlciIvPjwvbmFtZT48YmlydGhEYXRlIHZhbHVlPSIyMDA0LTAxLTI5Ii8+PGFkZHJlc3M+PHR5cGUgdmFsdWU9ImJvdGgiLz48bGluZSB2YWx1ZT0iTHVyY2hlbndlZyAxNDgiPjxleHRlbnNpb24gdXJsPSJodHRwOi8vaGw3Lm9yZy9maGlyL1N0cnVjdHVyZURlZmluaXRpb24vaXNvMjEwOTAtQURYUC1ob3VzZU51bWJlciI+PHZhbHVlU3RyaW5nIHZhbHVlPSIxNDgiLz48L2V4dGVuc2lvbj48ZXh0ZW5zaW9uIHVybD0iaHR0cDovL2hsNy5vcmcvZmhpci9TdHJ1Y3R1cmVEZWZpbml0aW9uL2lzbzIxMDkwLUFEWFAtc3RyZWV0TmFtZSI+PHZhbHVlU3RyaW5nIHZhbHVlPSJMdXJjaGVud2VnIi8+PC9leHRlbnNpb24+PC9saW5lPjxjaXR5IHZhbHVlPSJOb3JkIFBhdWxhIi8+PHBvc3RhbENvZGUgdmFsdWU9IjMzNDgxIi8+PGNvdW50cnkgdmFsdWU9IkQiLz48L2FkZHJlc3M+PC9QYXRpZW50PjwvcmVzb3VyY2U+PC9lbnRyeT48ZW50cnk+PGZ1bGxVcmwgdmFsdWU9Imh0dHBzOi8vcHZzLmdlbWF0aWsuZGUvZmhpci9Pcmdhbml6YXRpb24vOWVkOGY3MDYtNDc0NS00ZmU0LThlOGQtOTBjZjVmODkwOWMxIi8+PHJlc291cmNlPjxPcmdhbml6YXRpb24geG1sbnM9Imh0dHA6Ly9obDcub3JnL2ZoaXIiPjxpZCB2YWx1ZT0iOWVkOGY3MDYtNDc0NS00ZmU0LThlOGQtOTBjZjVmODkwOWMxIi8+PG1ldGE+PHByb2ZpbGUgdmFsdWU9Imh0dHBzOi8vZmhpci5rYnYuZGUvU3RydWN0dXJlRGVmaW5pdGlvbi9LQlZfUFJfRk9SX09yZ2FuaXphdGlvbnwxLjEuMCIvPjwvbWV0YT48aWRlbnRpZmllcj48dHlwZT48Y29kaW5nPjxzeXN0ZW0gdmFsdWU9Imh0dHA6Ly90ZXJtaW5vbG9neS5obDcub3JnL0NvZGVTeXN0ZW0vdjItMDIwMyIvPjxjb2RlIHZhbHVlPSJCU05SIi8+PC9jb2Rpbmc+PC90eXBlPjxzeXN0ZW0gdmFsdWU9Imh0dHBzOi8vZmhpci5rYnYuZGUvTmFtaW5nU3lzdGVtL0tCVl9OU19CYXNlX0JTTlIiLz48dmFsdWUgdmFsdWU9IjgzMTUzMTE2OSIvPjwvaWRlbnRpZmllcj48bmFtZSB2YWx1ZT0iQXJ6dHByYXhpcyBTY2hyYcOfZXIiLz48dGVsZWNvbT48c3lzdGVtIHZhbHVlPSJwaG9uZSIvPjx2YWx1ZSB2YWx1ZT0iKDA5NTE5KSAwNDI1MTIyIi8+PC90ZWxlY29tPjx0ZWxlY29tPjxzeXN0ZW0gdmFsdWU9ImVtYWlsIi8+PHZhbHVlIHZhbHVlPSJicmlhbi5wZmzDvGduZXJAa3VtbWxlLm5ldCIvPjwvdGVsZWNvbT48YWRkcmVzcz48dHlwZSB2YWx1ZT0iYm90aCIvPjxsaW5lIHZhbHVlPSJIZWlucmljaC1Mw7xia2UtU3RyLiAwIj48ZXh0ZW5zaW9uIHVybD0iaHR0cDovL2hsNy5vcmcvZmhpci9TdHJ1Y3R1cmVEZWZpbml0aW9uL2lzbzIxMDkwLUFEWFAtaG91c2VOdW1iZXIiPjx2YWx1ZVN0cmluZyB2YWx1ZT0iMCIvPjwvZXh0ZW5zaW9uPjxleHRlbnNpb24gdXJsPSJodHRwOi8vaGw3Lm9yZy9maGlyL1N0cnVjdHVyZURlZmluaXRpb24vaXNvMjEwOTAtQURYUC1zdHJlZXROYW1lIj48dmFsdWVTdHJpbmcgdmFsdWU9IkhlaW5yaWNoLUzDvGJrZS1TdHIuIi8+PC9leHRlbnNpb24+PC9saW5lPjxjaXR5IHZhbHVlPSJNaW50emxhZmZzY2hlaWQiLz48cG9zdGFsQ29kZSB2YWx1ZT0iMjYxNzAiLz48Y291bnRyeSB2YWx1ZT0iRCIvPjwvYWRkcmVzcz48L09yZ2FuaXphdGlvbj48L3Jlc291cmNlPjwvZW50cnk+PGVudHJ5PjxmdWxsVXJsIHZhbHVlPSJodHRwczovL3B2cy5nZW1hdGlrLmRlL2ZoaXIvQ292ZXJhZ2UvMGNhYTZjNWEtZTNhZS00YjI2LWI1YjYtZTZkMTJmNTM1YmU2Ii8+PHJlc291cmNlPjxDb3ZlcmFnZSB4bWxucz0iaHR0cDovL2hsNy5vcmcvZmhpciI+PGlkIHZhbHVlPSIwY2FhNmM1YS1lM2FlLTRiMjYtYjViNi1lNmQxMmY1MzViZTYiLz48bWV0YT48cHJvZmlsZSB2YWx1ZT0iaHR0cHM6Ly9maGlyLmtidi5kZS9TdHJ1Y3R1cmVEZWZpbml0aW9uL0tCVl9QUl9GT1JfQ292ZXJhZ2V8MS4xLjAiLz48L21ldGE+PGV4dGVuc2lvbiB1cmw9Imh0dHA6Ly9maGlyLmRlL1N0cnVjdHVyZURlZmluaXRpb24vZ2t2L2Jlc29uZGVyZS1wZXJzb25lbmdydXBwZSI+PHZhbHVlQ29kaW5nPjxzeXN0ZW0gdmFsdWU9Imh0dHBzOi8vZmhpci5rYnYuZGUvQ29kZVN5c3RlbS9LQlZfQ1NfU0ZISVJfS0JWX1BFUlNPTkVOR1JVUFBFIi8+PGNvZGUgdmFsdWU9IjAwIi8+PC92YWx1ZUNvZGluZz48L2V4dGVuc2lvbj48ZXh0ZW5zaW9uIHVybD0iaHR0cDovL2ZoaXIuZGUvU3RydWN0dXJlRGVmaW5pdGlvbi9na3YvZG1wLWtlbm56ZWljaGVuIj48dmFsdWVDb2Rpbmc+PHN5c3RlbSB2YWx1ZT0iaHR0cHM6Ly9maGlyLmtidi5kZS9Db2RlU3lzdGVtL0tCVl9DU19TRkhJUl9LQlZfRE1QIi8+PGNvZGUgdmFsdWU9IjAwIi8+PC92YWx1ZUNvZGluZz48L2V4dGVuc2lvbj48ZXh0ZW5zaW9uIHVybD0iaHR0cDovL2ZoaXIuZGUvU3RydWN0dXJlRGVmaW5pdGlvbi9na3Yvd29wIj48dmFsdWVDb2Rpbmc+PHN5c3RlbSB2YWx1ZT0iaHR0cHM6Ly9maGlyLmtidi5kZS9Db2RlU3lzdGVtL0tCVl9DU19TRkhJUl9JVEFfV09QIi8+PGNvZGUgdmFsdWU9IjczIi8+PC92YWx1ZUNvZGluZz48L2V4dGVuc2lvbj48ZXh0ZW5zaW9uIHVybD0iaHR0cDovL2ZoaXIuZGUvU3RydWN0dXJlRGVmaW5pdGlvbi9na3YvdmVyc2ljaGVydGVuYXJ0Ij48dmFsdWVDb2Rpbmc+PHN5c3RlbSB2YWx1ZT0iaHR0cHM6Ly9maGlyLmtidi5kZS9Db2RlU3lzdGVtL0tCVl9DU19TRkhJUl9LQlZfVkVSU0lDSEVSVEVOU1RBVFVTIi8+PGNvZGUgdmFsdWU9IjEiLz48L3ZhbHVlQ29kaW5nPjwvZXh0ZW5zaW9uPjxzdGF0dXMgdmFsdWU9ImFjdGl2ZSIvPjx0eXBlPjxjb2Rpbmc+PHN5c3RlbSB2YWx1ZT0iaHR0cDovL2ZoaXIuZGUvQ29kZVN5c3RlbS92ZXJzaWNoZXJ1bmdzYXJ0LWRlLWJhc2lzIi8+PGNvZGUgdmFsdWU9IlBLViIvPjwvY29kaW5nPjwvdHlwZT48YmVuZWZpY2lhcnk+PHJlZmVyZW5jZSB2YWx1ZT0iUGF0aWVudC9lMDA3NzRmZC0yZTk4LTRhYTMtOGQ3My0wZWNlYWQzZGQ5NmUiLz48L2JlbmVmaWNpYXJ5PjxwYXlvcj48aWRlbnRpZmllcj48c3lzdGVtIHZhbHVlPSJodHRwOi8vZmhpci5kZS9zaWQvYXJnZS1pay9pa25yIi8+PHZhbHVlIHZhbHVlPSI2NzMzODAyNDciLz48L2lkZW50aWZpZXI+PGRpc3BsYXkgdmFsdWU9IktPQSBCZXJsaW4iLz48L3BheW9yPjwvQ292ZXJhZ2U+PC9yZXNvdXJjZT48L2VudHJ5PjxlbnRyeT48ZnVsbFVybCB2YWx1ZT0iaHR0cHM6Ly9wdnMuZ2VtYXRpay5kZS9maGlyL1ByYWN0aXRpb25lci84OWUzNjcxMi05YWIxLTRjYjYtYWE3Yi0yOTEyM2NkNDk5ZTMiLz48cmVzb3VyY2U+PFByYWN0aXRpb25lciB4bWxucz0iaHR0cDovL2hsNy5vcmcvZmhpciI+PGlkIHZhbHVlPSI4OWUzNjcxMi05YWIxLTRjYjYtYWE3Yi0yOTEyM2NkNDk5ZTMiLz48bWV0YT48cHJvZmlsZSB2YWx1ZT0iaHR0cHM6Ly9maGlyLmtidi5kZS9TdHJ1Y3R1cmVEZWZpbml0aW9uL0tCVl9QUl9GT1JfUHJhY3RpdGlvbmVyfDEuMS4wIi8+PC9tZXRhPjxpZGVudGlmaWVyPjx0eXBlPjxjb2Rpbmc+PHN5c3RlbSB2YWx1ZT0iaHR0cDovL3Rlcm1pbm9sb2d5LmhsNy5vcmcvQ29kZVN5c3RlbS92Mi0wMjAzIi8+PGNvZGUgdmFsdWU9IkxBTlIiLz48L2NvZGluZz48L3R5cGU+PHN5c3RlbSB2YWx1ZT0iaHR0cHM6Ly9maGlyLmtidi5kZS9OYW1pbmdTeXN0ZW0vS0JWX05TX0Jhc2VfQU5SIi8+PHZhbHVlIHZhbHVlPSI3MTY2MDgzMDUiLz48L2lkZW50aWZpZXI+PG5hbWU+PHVzZSB2YWx1ZT0ib2ZmaWNpYWwiLz48ZmFtaWx5IHZhbHVlPSJTY2hyYcOfZXIiPjxleHRlbnNpb24gdXJsPSJodHRwOi8vaGw3Lm9yZy9maGlyL1N0cnVjdHVyZURlZmluaXRpb24vaHVtYW5uYW1lLW93bi1uYW1lIj48dmFsdWVTdHJpbmcgdmFsdWU9IlNjaHJhw59lciIvPjwvZXh0ZW5zaW9uPjwvZmFtaWx5PjxnaXZlbiB2YWx1ZT0iRHIuIi8+PHByZWZpeCB2YWx1ZT0iRHIuIj48ZXh0ZW5zaW9uIHVybD0iaHR0cDovL2hsNy5vcmcvZmhpci9TdHJ1Y3R1cmVEZWZpbml0aW9uL2lzbzIxMDkwLUVOLXF1YWxpZmllciI+PHZhbHVlQ29kZSB2YWx1ZT0iQUMiLz48L2V4dGVuc2lvbj48L3ByZWZpeD48L25hbWU+PHF1YWxpZmljYXRpb24+PGNvZGU+PGNvZGluZz48c3lzdGVtIHZhbHVlPSJodHRwczovL2ZoaXIua2J2LmRlL0NvZGVTeXN0ZW0vS0JWX0NTX0ZPUl9RdWFsaWZpY2F0aW9uX1R5cGUiLz48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"