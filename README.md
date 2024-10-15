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

This repository provides software engineers with end to end ePrescription (E-Rezept) examples for testing and hardening of applications. This project lives by contribution of functioning Examples by the community of gematik and vendors.
It contains Standalone examples which are a copy of the examples that can be found on simplifier.net. These can be used as reference and/or building blocks for creating own examples.
Further this repository contains "end to end" examples. Each folder contains files that fit a certain use case.

## Usage

This project carries the following folder structure: startDateOfNewProfiles/UseCase/VersionOfUseCase/file
See the following example:

``` text
E-Rezept-Examples
│   README.md
└─End-to-End-Examples
│  └─1_01.07.2021
│  │   │
│  │   └──Freitext-Verordnung
│  │   │    │
│  │   │    └─Freitext_Verordnung_1
│  │   │    │   │ example1.json
│  │   │    │   │ example2.xml
│  │   │    │   │ ...
│  │   │    │
│  │   │    └─Freitext_Verordnung_2
│  │   │        │ example1.json
│  │   │        │ example2.xml
│  │   │        │ ...
│  │   │
│  │   └──PZN-Verordnung_Noctu
│  │   │    │
│  │   │    └─PZN-Verordnung_Noctu_1
│  │   │    │   │ example1.json
│  │   │    │   │ example2.json
│  │   │    │   │ ...
│  │   │
│  │   │
│  │   ...
│  │
│  │
│  └─── ...
│
└─Standalone-Examples
│  └─eRezept(KBV)
│  │  └─1.0.2
│  │  │  └─...
│  │  └─1.1.0
│  └─E-Rezept-Workflow(gematik)
...
```

### Creating ChargeItem Bundles for E-Rezept-FdV
This repo offers a script which can generate ChargeItem Examples from current E2E-Examples.
For further instructions see [Readme ChargeItem Script](./Scripts/Readme.md).

## Contributing

If you want to contribute, please check our [`CONTRIBUTING.md`](CONTRIBUTING.md).
We strongly encourage contributing examples to this repository.


## License
This project is licensed under the Apache 2.0 license.

## Contact
If you have questions or want to get in contact please use the "issues" function on GitHub.