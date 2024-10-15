#!/bin/bash

SCRIPT_DIR=$(dirname "$0")

# Check if the correct number of arguments are provided
if [ "$#" -lt 2 ]; then
    echo "Usage: $0 input_directory output_directory [template_directory]"
    exit 1
fi

# Assign arguments to variables
INPUT_DIR=$1
OUTPUT_DIR=$2
TEMPLATE_DIR=$3

# Create the output directory if it does not exist
mkdir -p "$OUTPUT_DIR"
echo "Processing files from $INPUT_DIR"
"$SCRIPT_DIR/process_files.sh" "$INPUT_DIR" "$OUTPUT_DIR"

# Copy all the non FSH files to the output directory
echo "Copying all non-FSH files to $OUTPUT_DIR"
"$SCRIPT_DIR/copy_nonfsh.sh" $TEMPLATE_DIR $OUTPUT_DIR

# Run the Python script
# python convert_fhir.py "$INPUT_DIR" "$OUTPUT_DIR" "$TEMPLATE_DIR"

