// Rules to set meta.profile in profiles and instances
RuleSet: PackageMetaProfile(profile)
* insert MetaProfile(https://gematik.de/fhir/erp/{profile}, 1.3)

RuleSet: MetaProfile(profile, version)
* meta.profile[+] = "{profile}|{version}"

// Dates for Examples (Date of actual release)
RuleSet: Date(field)
* {field} = "2025-01-15"

RuleSet: DateTime(field)
* {field} = "2025-01-15T15:29:00+00:00"

RuleSet: DateTimeStamp(field)
* {field} = "2025-01-15T15:29:00.434+00:00"

RuleSet: DateTimeStampPlus1hr(field)
* {field} = "2025-01-15T16:29:00.434+00:00"

RuleSet: DatePlus30days(field) //Date plus 30 Days
* {field} = "2025-02-14"

RuleSet: AcceptDate(field) //Date plus 28 Days
* {field} = "2025-02-12"

RuleSet: ExpiryDate(field) //Date plus 3 Months
* {field} = "2025-04-15"

RuleSet: DiGAExpiryDate(field) //Date plus 100 Tage
* {field} = "2025-04-25"

RuleSet: FachdienstVersion(field)
* {field} = "1.16.0"