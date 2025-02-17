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
API_DATE="2025-10-01"
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

# Check if xml-formatter is installed
if ! npm list -g xml-formatter > /dev/null 2>&1; then
  echo "Error: xml-formatter is not installed. Please install it using 'npm install -g xml-formatter'."
  exit 1
fi

echo "Executing SUSHI command"
sushi "$SCRIPT_DIR"

#echo "Fixing decimal value issues in $INPUT_DIR"
#"$SCRIPT_DIR/scripts/fix_decimalValuesJSON.sh" "$INPUT_DIR"

echo "Generating examples and folder structure"
"$SCRIPT_DIR/scripts/generate_examples.sh" $INPUT_DIR $OUTPUT_DIR $TEMPLATE_DIR

# Copy to API-Examples
echo "Copying to API-Examples"
echo "API_DATE: $API_DATE"
"$SCRIPT_DIR/scripts/copy_to_API-Examples.sh" $OUTPUT_DIR $API_EXAMPLES_DIR

# remove output folder
echo "Removing output folder"
rm -rf $OUTPUT_DIR
