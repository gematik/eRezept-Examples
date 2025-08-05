#!/usr/bin/env ruby

parentDirectory = ARGV[0]
parentDirectory = File.expand_path(File.join(File.dirname(__FILE__), "..", "End-to-End-Examples", "4_01.07.2023", "PKV")) unless ARGV[0]

script = File.join(File.expand_path(File.dirname(__FILE__)), "TransmuteChargeItemForMobile.rb")

input_folders = Dir.glob(File.join(parentDirectory, "**", "*", "*.xml")).map { |path| File.dirname(path) }.uniq

input_folders.each do |folder|
  puts "Transmute: #{folder}"
  `#{script} "#{folder}"`

  dest = File.join(folder, "chargeItemBundle.json")
  if File.exist?(dest)
    puts "Found chargeItemBundle.json in #{folder}"
  else
    puts "No chargeItemBundle.json found for #{folder}"
  end
end
