#!/bin/bash

# This script executes the necessary scripts to generate the examples for a specified profile version

# PROFILE_VERSION=$1
# SRC_DIRECTORY=$2
# DEST_DIRECTION=$3

INPUT_DIR="../fsh-generated/resources"
OUTPUT_DIR="../output"
TEMPLATE_DIR="../input/fsh/examples"

# cd scripts
# echo "Preparing FSH files for profile version $PROFILE_VERSION"
# ./prepare_examples.sh $PROFILE_VERSION $SRC_DIRECTORY $DEST_DIRECTION
# cd ..

echo "Executing SUSHI command"
sushi
cd scripts
echo "Generating examples and folder structure"
./generate_examples.sh $INPUT_DIR $OUTPUT_DIR $TEMPLATE_DIR