#!/usr/bin/env ruby

# Call:
# ruby Scripts/ConvertXmlExamplesToJson.rb

# Add or remove directories to convert
# Note: The path must be relative to the root of the repository (not absolute)
fhirResourceExampleDirs = [
	"./Standalone-Examples",
	"./End-to-End-Examples",
]

fhirResourceExampleDirs.each do |fhirResourceExampleDir|

# Get all subdirectories recursively
	subDirs = Dir.glob("#{fhirResourceExampleDir}/**/*").select { |f| File.directory?(f) }

	script = File.join(File.expand_path(File.dirname(__FILE__)), "ConvertXmlDirToJson.rb")

	subDirs.each do |subDir|
		# If subDir path ends with "/json", skip it
		next if subDir.end_with?("/json")
		puts "Transcoding contents of: #{subDir}"
		`#{script} "#{subDir}" "#{File.join(File.expand_path(subDir), "json")}"`
	end
end