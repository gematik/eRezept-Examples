#!/usr/bin/env ruby

parentDirectory = ARGV[0]
parentDirectory = File.expand_path(File.join(File.dirname(__FILE__), "..", "End-to-End-Examples", "4_01.07.2023", "PKV")) unless ARGV[1]

aggregateOutput = ARGV[1]

script = File.join(File.expand_path(File.dirname(__FILE__)), "TransmuteChargeItemForMobile.rb")

input_folders = []

input_folders = Dir.glob(File.join(parentDirectory, "**", "*", "*.xml")).map { |path| File.dirname(path) }.uniq

input_folders.each do |folder|
	puts "Transmute: #{folder}"
	`#{script} "#{folder}"`

	target_name = "#{folder.split("PKV/").last.split("/").join("_")}.json"

    puts `cp -f #{File.join(folder, "chargeItemBundle.json")} "#{File.join(aggregateOutput, target_name)}"` if aggregateOutput
end
