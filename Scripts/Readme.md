# This folder contains scripts to generate test data

## `ConvertXmlExamplesToJson.rb` & `ConvertXmlDirToJson.rb` & `ConvertXmlFileToJson.rb`

Convert FHIR `.xml` example files into `.json` format.

For a batch conversion of multiple directories and their subdirectories (edit) and call `ConvertXmlExamplesToJson.rb`.

This script will delegate to `ConvertXmlDirToJson.rb` which will convert all found `.xml` files in one directory.

It itself delegates to `ConvertXmlFileToJson.rb` which converts a single `.xml` file.

All those script also function as standalone scripts.

Batch usage:

  `ruby Scripts/ConvertXmlExamplesToJson.rb`

Single usage:

  `Scripts/ConvertXmlFileToJson.rb ./Standalone-Examples/E-Rezept-Workflow_gematik/1.4.3/MedicationDispense-Example-MedicationDispense-DiGA-DeepLink.xml`

## `TransmuteChargeItemForMobile.rb` & `TransmuteChargeItemForMobileBatch.rb`

Transmutes xml examples to mobile readable charge items. Missing ChargeItem data is replaced with dummy data (see `ChargeItem.json` and `erp_pr_bundle.json`). Signatures are mocked.

Batch usage: 

  # /tmp/chargeitem_bundles folder must exist
  mkdir -p /tmp/chargeitem_bundles
  # call by specifiying parent directory containing directories with pkv charge item examples
  ./Scripts/TransmuteChargeItemForMobileBatch.rb "End-to-End-Examples/4_01.07.2023/PKV" "/tmp/chargeitem_bundles"

Single Usage:

  ./Scripts/TransmuteChargeItemForMobile.rb "End-to-End-Examples/4_01.07.2023/PKV/PZN-Verordnung_Nr_7"
