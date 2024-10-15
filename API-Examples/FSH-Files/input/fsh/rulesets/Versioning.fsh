// Rules to set meta.profile in profiles and instances
RuleSet: PackageMetaProfile(profile)
* insert MetaProfile(https://gematik.de/fhir/erp/{profile}, 1.3)

RuleSet: MetaProfile(profile, version)
* meta.profile[+] = "{profile}|{version}"

RuleSet: EntryResourcePackage(profile)
* entry[=].resource.meta.profile = "https://gematik.de/fhir/erp/{profile}|1.3"

RuleSet: OnlyParameterPartProfile(profile)
* parameter.part[=].resource.meta.profile = "https://gematik.de/fhir/erp/{profile}|1.3"

RuleSet: ParameterPartProfile(profile)
* parameter[=].part[=].resource.meta.profile = "https://gematik.de/fhir/erp/{profile}|1.3"