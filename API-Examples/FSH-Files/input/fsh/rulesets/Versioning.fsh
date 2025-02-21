// Rules to set meta.profile in profiles and instances
RuleSet: PackageMetaProfile(profile)
* insert MetaProfile(https://gematik.de/fhir/erp/{profile}, 1.3)

RuleSet: MetaProfile(profile, version)
* meta.profile[+] = "{profile}|{version}"

// Dates for Examples (Date of actual release)
RuleSet: Date(field)
* {field} = "2025-10-01"

RuleSet: DateTime(field)
* {field} = "2025-10-01T15:29:00+00:00"

RuleSet: DateTimeStamp(field)
* {field} = "2025-10-01T15:29:00.434+00:00"

RuleSet: DateTimeStampPlus1hr(field)
* {field} = "2025-10-01T16:29:00.434+00:00"

// Website to determine dates https://www.timeanddate.com/date/dateadd.html?y1=2025&m1=10&d1=1
RuleSet: DatePlus30days(field) //Date plus 30 Days
* {field} = "2025-10-31"

RuleSet: AcceptDate(field) //Date plus 28 Days
* {field} = "2025-10-28"

RuleSet: ExpiryDate(field) //Date plus 3 Months
* {field} = "2026-01-01"

RuleSet: DiGAExpiryDate(field) //Date plus 100 Tage
* {field} = "2026-01-09"

RuleSet: FachdienstVersion(field)
* {field} = "1.18.0"