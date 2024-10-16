#!/bin/bash

# This script executes the necessary scripts to generate the examples for a specified profile version

# PROFILE_VERSION=$1
# SRC_DIRECTORY=$2
# DEST_DIRECTION=$3

# Get the directory where the script is located
SCRIPT_DIR=$(dirname "$0")

INPUT_DIR="$SCRIPT_DIR/fsh-generated/resources"
OUTPUT_DIR="$SCRIPT_DIR/output"
TEMPLATE_DIR="$SCRIPT_DIR/input/fsh/examples"
API_DATE="2024-11-01"
API_EXAMPLES_DIR="$SCRIPT_DIR/../$API_DATE"

# cd scripts
# echo "Preparing FSH files for profile version $PROFILE_VERSION"
# ./prepare_examples.sh $PROFILE_VERSION $SRC_DIRECTORY $DEST_DIRECTION
# cd ..

# Check if jq is installed
if ! command -v jq &> /dev/null; then
    echo "Error: jq is not installed. Please install jq to run this script."
    exit 1
fi

echo "Executing SUSHI command"
sushi "$SCRIPT_DIR"
echo "Generating examples and folder structure"
"$SCRIPT_DIR/scripts/generate_examples.sh" $INPUT_DIR $OUTPUT_DIR $TEMPLATE_DIR

# We want to format xmls with xmllint, therefore check if present
if ! command -v xmllint &> /dev/null; then
  echo "Error: xmllint (libxml2) is not installed. Please install libxml2 and try again."
  exit 1
fi

# Format XML files in the source directory using xmllint
echo "Formatting XML files in $OUTPUT_DIR and subdirectories..."
find "$OUTPUT_DIR" -name "*.xml" -type f -exec xmllint --format {} -o {} \;
echo "XML formatting complete."

# Post-process XML to format namespace definitions across multiple lines
echo "Formatting namespace definitions..."
find "$SOURCE_DIR" -name "*.xml" -type f -exec sed -i 's/\(xmlns:[^=]*="[^"]*"\)/\n            \1/g' {} \;
echo "Namespace formatting complete."

# Copy to API-Examples
echo "Copying to API-Examples"
echo "API_DATE: $API_DATE"
"$SCRIPT_DIR/scripts/copy_to_API-Examples.sh" $OUTPUT_DIR $API_EXAMPLES_DIR

# remove output folder
echo "Removing output folder"
rm -rf $OUTPUT_DIR
