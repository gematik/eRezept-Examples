# This folder contains scripts to generate test data

## `TransmuteChargeItemForMobile.rb` & `TransmuteChargeItemForMobileBatch.rb`

Transmutes xml examples to mobile readable charge items. Missing ChargeItem data is replaced with dummy data (see `ChargeItem.json` and `erp_pr_bundle.json`). Signatures are mocked.

Batch usage: 

  # /tmp/pdfs folder must exist
  mkdir -p /tmp/pdfs
  # call by specifiying parent directory containing directories with pkv charge item examples
  ./Scripts/TransmuteChargeItemForMobileBatch.rb "End-to-End-Examples/4_01.07.2023/PKV" "/tmp/pdfs"

Single Usage:

  ./Scripts/TransmuteChargeItemForMobile.rb "End-to-End-Examples/4_01.07.2023/PKV/PZN-Verordnung_Nr_7"
