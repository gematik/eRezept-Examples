#!/usr/bin/env ruby

# Call:
# ruby Scripts/ConvertXmlFileToJson.rb <xmlFile> <outputDirectory>
# <xmlFile> path must be relative to the root of the repository (not absolute)
# ruby Scripts/ConvertXmlFileToJson.rb ./Standalone-Examples/E-Rezept-Workflow_gematik/1.4.3/MedicationDispense-Example-MedicationDispense-DiGA-DeepLink.xml

xmlFile = ARGV[0]
xmlFileName = File.basename(xmlFile)
xmlFileDirectory = File.dirname(xmlFile)

outputDirectory = ARGV[1]
outputDirectory = File.join(File.expand_path(xmlFileDirectory), "json") unless ARGV[1]

jsonFile = File.join(outputDirectory, xmlFileName.sub(/\.xml$/, "") + ".json")

`hash fhir 2>/dev/null`
if $?.exitstatus != 0
  puts "\nERROR: 'fhir' tool missing! Use:\n\n\tbrew install dotnet@8\n\nto install dotnet cli. Then use\n\n\tdotnet tool install -g firely.terminal\n\nto install the fhir cli. Extend your cli path as needed by each step. Ensure `fhir clear` is working."
  exit installfhir
end

puts `mkdir -p '#{outputDirectory}'`
puts `fhir clear`
puts `fhir push '#{xmlFile}'`
puts `fhir save '#{jsonFile}' --json --pretty`