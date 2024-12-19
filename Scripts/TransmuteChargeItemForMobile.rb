#!/usr/bin/env ruby


folderToTransmute = ARGV[0]

baseChargeItemFileName = ARGV[1]
baseChargeItemFileName = File.join(File.expand_path(File.dirname(__FILE__)), "ChargeItem.json") unless ARGV[1]

prBundle = ARGV[2]
prBundle = File.join(File.expand_path(File.dirname(__FILE__)), "erp_pr_bundle.json") unless ARGV[2]

puts "Folder: #{folderToTransmute}"
puts "BaseChargeItem: #{baseChargeItemFileName}"
puts "prBundle: #{prBundle}"

`hash fhir 2>/dev/null`
if $?.exitstatus != 0
  puts "\nERROR: 'fhir' tool missing! Use:\n\n\tbrew install dotnet@8\n\nto install dotnet cli. Then use\n\n\tdotnet tool install -g firely.terminal\n\nto install the fhir cli. Extend your cli path as needed by each step. Ensure `fhir clear` is working."
  exit installfhir
end

`hash jq 2>/dev/null`
if $?.exitstatus != 0
  puts "\nERROR: 'jq' tool missing! Use:\n\n\tbrew install jq\n\nto install.\n\n"
  exit jq_installed
end

# Temp work directory
`rm -rf ./tmp || true`
`mkdir tmp`

inputFiles = Array.new

# copy all xmls
Dir.glob("#{folderToTransmute}/*.xml").each do |file|
  inputFiles.append(File.basename(file))
  `cp #{file} ./tmp`
end

puts `fhir clear`

taskId = ""

def file_has_bundle_name?(file, name)
  response = `jq '.meta.profile[] | select( . == "#{name}" ) ' '#{file}'`.gsub("\"", "").strip!
  puts "TEST: '#{name}' <> '#{response}' -> #{name == response}"
  return name == response
end

def file_is_kbv_bundle?(file)
  file_has_bundle_name?(file, "https://fhir.kbv.de/StructureDefinition/KBV_PR_ERP_Bundle|1.1.0")
end

def file_is_dispense_bundle?(file)
  file_has_bundle_name?(file, "http://fhir.abda.de/eRezeptAbgabedaten/StructureDefinition/DAV-PKV-PR-ERP-AbgabedatenBundle|1.2")
end

def file_is_medication_dispense_bundle?(file)
  file_has_bundle_name?(file, "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_PR_CloseOperationInputBundle|1.2")
end

# KBV-Bundle identifier
kbvIdentifier = `jq '.supportingInformation[] | select( .display == "https://fhir.kbv.de/StructureDefinition/KBV_PR_ERP_Bundle" ).reference ' #{baseChargeItemFileName}`.gsub("\"","").strip!

# dispense-Bundle identifier
dispenseIdentifier = `jq '.supportingInformation[] | select( .display == "http://fhir.abda.de/eRezeptAbgabedaten/StructureDefinition/DAV-PKV-PR-ERP-AbgabedatenBundle" ).reference ' #{baseChargeItemFileName}`.gsub("\"","").strip!

# dispense-Bundle identifier
gemErpBundleIdentifier = `jq '.supportingInformation[] | select( .display == "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_PR_Bundle" ).reference ' #{baseChargeItemFileName}`.gsub("\"","").strip!

puts "gemErpBundleIdentifier: #{gemErpBundleIdentifier}"

inputFiles.each do |file|
  jsonFile = "./tmp/#{file.sub("xml", "json")}"
  puts "File: #{file}"
  puts `fhir push './tmp/#{file}'`
  type = `fhir peek`.strip!
  puts `fhir save '#{jsonFile}'`

  if type.start_with? "MedicationDispense/"
    taskId = `jq '.identifier[] | select( .system == "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId" ).value ' '#{jsonFile}'`.strip!.gsub("\"","")
    puts "MedicationDispense, remove"
    puts `rm '#{jsonFile}'`
  elsif file_is_medication_dispense_bundle?(jsonFile) # Medication Dispense may come within a bundle
    taskId = `jq '.entry[0].resource.identifier[] | select( .system == "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId" ).value ' '#{jsonFile}'`.strip!.gsub("\"","")
    puts "MedicationDispense, remove"
    puts `rm '#{jsonFile}'`
  elsif file_is_dispense_bundle?(jsonFile)
    puts "DISPENSE"
    puts `mv #{jsonFile} #{jsonFile.sub(".json", "1.json")}`
    `jq '.signature = {"type":[{"system":"urn:iso-astm:E1762-95:2013","code":"1.2.840.10065.1.12.1.1"}],"when":"2023-07-30T10:40:00+00:00","who":{"reference":"https://erp-ref.zentral.erp.splitdns.ti-dienste.de/Device/1"},"sigFormat":"application/pkcs7-mime","data":"Y2RjMTVjNThkMzlkMjllNDdjMTk1MjIzNDlkODRjMThiNTliYTZkMGFhZmI5NGYyZjM2NDFkNGJiZTk1ODhiMQ=="}' '#{jsonFile.sub(".json", "1.json")}' > #{jsonFile}`
    # `jq '{ resource: ., fullUrl: "#{kbvIdentifier}"}' '#{jsonFile}' > #{jsonFile.sub(".json", "2.json")}`
  elsif file_is_kbv_bundle?(jsonFile)
    puts "KBV"
    puts `mv #{jsonFile} #{jsonFile.sub(".json", "1.json")}`
    `jq '.signature = {"type":[{"system":"urn:iso-astm:E1762-95:2013","code":"1.2.840.10065.1.12.1.1"}],"when":"2023-07-30T10:40:00+00:00","who":{"reference":"https://erp-ref.zentral.erp.splitdns.ti-dienste.de/Device/1"},"sigFormat":"application/pkcs7-mime","data":"Y2RjMTVjNThkMzlkMjllNDdjMTk1MjIzNDlkODRjMThiNTliYTZkMGFhZmI5NGYyZjM2NDFkNGJiZTk1ODhiMQ=="}' '#{jsonFile.sub(".json", "1.json")}' > #{jsonFile}`
    # `jq '.' '#{jsonFile}' > #{jsonFile.sub(".json", "3.json")}`
    # `jq '{ resource: ., fullUrl: "#{dispenseIdentifier}"}' '#{jsonFile}' > #{jsonFile.sub(".json", "2.json")}`
  end

  puts "\n\n"
end

puts `sed "s/200.334.138.469.717.92/#{taskId}/g" '#{baseChargeItemFileName}' > ./tmp/ChargeItem.json`
puts `cp "#{prBundle}" ./tmp/prBundle.json`
puts `fhir clear`

inputFiles.each do |file|
  puts "F: #{file}"
  jsonFile = "./tmp/#{file.sub(".xml", ".json")}"
  puts `fhir push '#{jsonFile}'`
end

puts "REST:"
puts `fhir push './tmp/prBundle.json'`

puts "CHARGEITEM"
puts `fhir push './tmp/ChargeItem.json'`

puts `fhir bundle`

puts `fhir save './tmp/output.json'`


puts `jq '.entry |= map(if .resource.meta.profile[0] == "https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_PR_Bundle|1.2" then .fullUrl="#{gemErpBundleIdentifier}" else . end)' ./tmp/output.json > ./tmp/output2.json`
puts `jq '.entry |= map(if .resource.meta.profile[0] == "https://fhir.kbv.de/StructureDefinition/KBV_PR_ERP_Bundle|1.1.0" then .fullUrl="#{kbvIdentifier}" else . end)' ./tmp/output2.json > ./tmp/output3.json`
puts `jq '.entry |= map(if .resource.meta.profile[0] == "http://fhir.abda.de/eRezeptAbgabedaten/StructureDefinition/DAV-PKV-PR-ERP-AbgabedatenBundle|1.2" then .fullUrl="#{dispenseIdentifier}" else . end)' ./tmp/output3.json > ./tmp/output4.json`
# puts `jq '.entry[] | select( .resource.meta.profile[0] == "https://fhir.kbv.de/StructureDefinition/KBV_PR_ERP_Bundle|1.1.0").fullUrl = "#{kbvIdentifier}"' output.json > output2.json`
# puts `jq '.entry[] | select( .resource.meta.profile[0] == "http://fhir.abda.de/eRezeptAbgabedaten/StructureDefinition/DAV-PKV-PR-ERP-AbgabedatenBundle|1.2").fullUrl = "#{dispenseIdentifier}"' output2.json > output3.json`
puts `cp ./tmp/output4.json #{File.join(folderToTransmute, "chargeItemBundle.json")}`

`rm -rf ./tmp || true`
