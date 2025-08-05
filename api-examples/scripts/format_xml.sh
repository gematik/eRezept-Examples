#!/bin/bash
OUTPUT_DIR=$1

# Set NODE_PATH to include the global npm modules path
export NODE_PATH=$(npm root -g)

# Function to format XML files using Node.js
format_xml() {
  local xml_file="$1"
  node -e "
  const fs = require('fs');
  const formatter = require('xml-formatter');

  const xml = fs.readFileSync('$xml_file', 'utf-8');
  const formattedXml = formatter(xml);
  fs.writeFileSync('$xml_file', formattedXml);
  "
  # echo "Formatted $xml_file"
}

# Find and format all XML files in the current directory and subdirectories
find "$OUTPUT_DIR" -type f -name "*.xml" | while read -r xml_file; do
  format_xml "$xml_file"
done