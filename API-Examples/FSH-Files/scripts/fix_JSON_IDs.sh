#!/bin/bash

# Check if a directory is provided
if [ $# -eq 0 ]; then
    echo "Please provide a directory path"
    exit 1
fi

# Directory to process
DIR="$1"

# Counter for modified files
modified_count=0

# Find all JSON files in the directory and subdirectories
find "$DIR" -type f -name "*.json" -print0 | while IFS= read -r -d '' file; do
    # Create a temporary file
    temp_file=$(mktemp)
    
    # Apply the jq commands and save to temporary file
    jq '
    (.. | objects | select(has("meta")))
    |= (.meta |= if has("id") then del(.id) else . end)
    | (.. | strings | select(test("000\\.000\\.01-[0-9]{1,2}")))
    |= "000.000.01"
    ' "$file" > "$temp_file"
    
    # Compare the original and modified files
    if ! cmp -s "$file" "$temp_file"; then
        # Files are different, so update the original and increment counter
        mv "$temp_file" "$file"
        echo "Modified: $file"
        ((modified_count++))
    else
        # Files are the same, so remove the temporary file
        rm "$temp_file"
    fi
done

echo "Process completed. $modified_count file(s) were modified."