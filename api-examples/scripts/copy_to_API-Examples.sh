#!/bin/bash

# Ensure both FROM_DIR and TO_DIR are provided
if [ $# -ne 2 ]; then
  echo "Usage: $0 <FROM_DIR> <TO_DIR>"
  exit 1
fi

SOURCE_DIR=$1  
DEST_DIR=$2    

# Check if the source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
  echo "Source directory $SOURCE_DIR does not exist. Exiting."
  exit 1
fi

# Check if the destination directory exists and delete if it does
if [ -d "$DEST_DIR" ]; then
  echo "Destination directory $DEST_DIR already exists. Deleting it..."
  rm -rf "$DEST_DIR"
fi

# Create the destination directory
echo "Creating destination directory $DEST_DIR"
mkdir -p "$DEST_DIR"

# Copy the contents from the source directory to the destination directory
echo "Copying contents from $SOURCE_DIR to $DEST_DIR"
cp -r "$SOURCE_DIR/"* "$DEST_DIR/"

echo "Copy complete."
