<img width="200" height="37" src="images/Gematik_Logo_Flag_With_Background.png"/> <br/>

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

This project contains various branches that always reflect the version configuration of that date. For further Information regarding the transitions of FHIR Profiles see https://github.com/gematik/api-erp/blob/master/docs/erp_fhirversion.adoc.
By switching a branch you can see all of the examples in the version of that configuration.

### Notes on the folder structure

#### End-to-End-Examples
This folder contains artifacts for a given usecase which can be identified via foldername (e.g. .../PZN_Mehrfachverordnung/PZN_MV_1/*). These artifacts usually contain
* the initial prescription
* dispense information for ePrescription Service
* dispense information for billing

#### Standalone-Examples
This folder is a collection of examples that are published on the simplifier.net websites of the respective projects and contain various examples that the IG-creators provided.

#### Test-Scenarios
The gematik runs regular tests against the ePrescription Service. These artifacts that were gathered in the end to end tests are collected here.

#### Negative-Examples
:warning: These examples are invalid examples and are only to be used for testing.

#### API-Examples
This folder is the collection of examples that are being used in the [API Documentation](https://github.com/gematik/api-erp/tree/master).

### Creating ChargeItem Bundles for E-Rezept-FdV
This repo offers a script which can generate ChargeItem Examples from current E2E-Examples.
For further instructions see [Readme ChargeItem Script](./Scripts/Readme.md).

## Contributing

If you want to contribute, please check our [`CONTRIBUTING.md`](CONTRIBUTING.md).
We strongly encourage contributing examples to this repository.


## License
Copyright 2022-2025 gematik GmbH

Apache License, Version 2.0

See the [LICENSE](./LICENSE) for the specific language governing permissions and limitations under the License

## Additional Notes and Disclaimer from gematik GmbH
1. Copyright notice: Each published work result is accompanied by an explicit statement of the license conditions for use. These are regularly typical conditions in connection with open source or free software. Programs described/provided/linked here are free software, unless otherwise stated.
2. Permission notice: Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
    1. The copyright notice (Item 1) and the permission notice (Item 2) shall be included in all copies or substantial portions of the Software.
    2. The software is provided "as is" without warranty of any kind, either express or implied, including, but not limited to, the warranties of fitness for a particular purpose, merchantability, and/or non-infringement. The authors or copyright holders shall not be liable in any manner whatsoever for any damages or other claims arising from, out of or in connection with the software or the use or other dealings with the software, whether in an action of contract, tort, or otherwise.
    3. The software is the result of research and development activities, therefore not necessarily quality assured and without the character of a liable product. For this reason, gematik does not provide any support or other user assistance (unless otherwise stated in individual cases and without justification of a legal obligation). Furthermore, there is no claim to further development and adaptation of the results to a more current state of the art.
3. Gematik may remove published results temporarily or permanently from the place of publication at any time without prior notice or justification.
4. Please note: Parts of this code may have been generated using AI-supported technology. Please take this into account, especially when troubleshooting, for security analyses and possible adjustments.


## Contact
If you have questions or want to get in contact please use the "issues" function on GitHub.