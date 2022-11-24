# Beispiele für das E-Rezept

In diesem Repository sind Beispiele für den Kontext "E-Rezept" zu finden. Nach der Ordnerstruktur finden sich hier Beispiele für folgende FHIR-Spezifikationen:

* E-Rezept-Patientenrechnung (gematik)
* E-Rezept-Workflow (gematik)
* eRezept (KBV)
* eRezeptAbgabedaten (ABDA)
* eRezeptAbgabedatenPKV (ABDA)
* eRezeptAbrechnungsdaten (GKVSV)

Die jeweilgen Beteiligten stellen hier ihre Beispiele bereit. Folgende Ordnerstruktur ist vorgesehen

``` http
E-Rezept-Examples
│   README.md
│
└─eRezept(KBV)
│   │   README.md
│   │   ReleaseNotes.md
│   │
│   └──1.0.0
│   │    │
│   │    └─invalid
│   │    │   │ example1.json
│   │    │   │ example2.json
│   │    │   │ ...
│   │    │
│   │    └─valid
│   │        │ example1.json
│   │        │ example2.json
│   │        │ ...
│   │
│   └──1.0.1
│   │    │
│   │    └─invalid
│   │    │   │ example1.json
│   │    │   │ example2.json
│   │    │   │ ...
│   │    │
│   │    └─valid
│   │        │ example1.json
│   │        │ example2.json
│   │        │ ...
│   │
│   │
│   ...
│
│
└─── ...
│
...
```
