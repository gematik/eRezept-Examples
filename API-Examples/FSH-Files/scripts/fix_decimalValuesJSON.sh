#!/bin/bash

# Check if jq is installed
if ! command -v jq &> /dev/null
then
    echo "Error: jq is not installed. Please install it first."
    echo "On Ubuntu or Debian-based systems, you can install it using:"
    echo "sudo apt-get update && sudo apt-get install jq"
    echo "For other systems, please refer to the jq documentation: https://stedolan.github.io/jq/download/"
    exit 1
fi

# Function to fix decimal values in JSON files
fix_decimalValues_json() {
    input_file="$1"
    temp_file="${input_file}.temp"

    jq '
    walk(
        if type == "object" and (.valueDecimal != null or .valueMoney != null) then
            if .valueDecimal != null then
                .valueDecimal |= (
                    if type == "number" then
                        (. * 100 | floor | . / 100) | tostring | if contains(".") then . else . + ".00" end | if test("\\.\\d$") then . + "0" else . end
                    else
                        .
                    end
                )
            elif .valueMoney != null and .valueMoney.value != null then
                .valueMoney.value |= (
                    if type == "number" then
                        (. * 100 | floor | . / 100) | tostring | if contains(".") then . else . + ".00" end | if test("\\.\\d$") then . + "0" else . end
                    else
                        .
                    end
                )
            else
                .
            end
        else
            .
        end
    )
    ' "$input_file" > "$temp_file"

    # Check if any changes were made
    if cmp -s "$input_file" "$temp_file"; then
        echo "No changes needed for $input_file"
        rm "$temp_file"
    else
        mv "$temp_file" "$input_file"
        echo "Updated $input_file"
    fi
}

# Directory to search for JSON files
directory_to_search="$1"

# Check if directory is provided
if [ -z "$directory_to_search" ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

# Check if the provided directory exists
if [ ! -d "$directory_to_search" ]; then
    echo "Error: The specified directory does not exist."
    exit 1
fi

# Find and process each JSON file
find "$directory_to_search" -type f -name "*.json" | while read -r file; do
    echo "Processing $file"
    fix_decimalValues_json "$file"
done

echo "All JSON files processed."