<img width="200" height="37" src="images/Gematik_Logo_Flag.png"/> <br/>

# E-Rezept Examples

<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>

## About The Project

This repository provides software engineers with ePrescription (E-Rezept) examples for testing and hardening of applications. Each supplier of FHIR-specifications uploads their examples into this location. The top-level folders carry the name of the representative simplifier project.

* [E-Rezept-Patientenrechnung (gematik)](https://simplifier.net/erezept-patientenrechnung)
* [E-Rezept-Workflow (gematik)](https://simplifier.net/erezept-workflow)
* [eRezept (KBV)](https://simplifier.net/eRezept)
* [eRezeptAbgabedaten (ABDA)](https://simplifier.net/erezeptabgabedaten)
* [eRezeptAbgabedatenPKV (ABDA)](https://simplifier.net/erezeptabgabedatenpkv)
* [eRezeptAbrechnungsdaten (GKVSV)](https://simplifier.net/eRezeptAbrechnungsdaten)

## Usage

This project carries the following folder structure: project/version/(in)valid/example.json
See the following example:

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

## Contributing

If you want to contribute, please check our [`CONTRIBUTING.md`](CONTRIBUTING.md).
We strongly encourage contributing examples to this repository.


## License
<!-- Refer to Guideline 'License' -->
//TODO

## Contact
If you have questions or want to get in contact please use the "issues" function on GitHub.