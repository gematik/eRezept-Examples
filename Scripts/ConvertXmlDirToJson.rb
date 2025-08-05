#!/usr/bin/env ruby

# Call:
# ruby Scripts/ConvertXmlDirToJson.rb <xmlFileDirectory> <outputDirectory>
# <xmlFileDirectory> path must be relative to the root of the repository (not absolute)
# ruby Scripts/ConvertXmlDirToJson.rb ./Standalone-Examples/E-Rezept-Workflow_gematik/1.4.3

xmlFileDirectory = ARGV[0]

outputDirectory = ARGV[1]
outputDirectory = File.join(File.expand_path(xmlFileDirectory), "json") unless ARGV[1]

puts "Input Folder: #{xmlFileDirectory}"
puts "Output Folder: #{outputDirectory}"

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

`rm -rf #{outputDirectory} || true`
`mkdir -p #{outputDirectory}`

inputFiles = Array.new

# copy all xmls
puts `fhir clear`
puts `fhir push #{xmlFileDirectory}/`
Dir.chdir(outputDirectory) do
  puts `fhir save --all --json --pretty`
end

# Remove all .xml files from the tmp directory