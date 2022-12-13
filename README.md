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

## Usage

This project carries the following folder structure: startDateOfNewProfiles/UseCase/VersionOfUseCase/file
See the following example:

``` http
E-Rezept-Examples
│   README.md
│
└─1_01.07.2021
│   │
│   └──Freitext-Verordnung
│   │    │
│   │    └─Freitext_Verordnung_1
│   │    │   │ example1.json
│   │    │   │ example2.xml
│   │    │   │ ...
│   │    │
│   │    └─Freitext_Verordnung_2
│   │        │ example1.json
│   │        │ example2.xml
│   │        │ ...
│   │
│   └──PZN-Verordnung_Noctu
│   │    │
│   │    └─PZN-Verordnung_Noctu_1
│   │    │   │ example1.json
│   │    │   │ example2.json
│   │    │   │ ...
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