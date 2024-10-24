#!/bin/bash

# Function to fix decimal values in XML files
fix_decimalValues_xml() {
    input_file="$1"
    temp_file="${input_file}.temp"

    # Process valueDecimal and valueMoney elements
    sed -E '
        # Handle valueDecimal
        s/<valueDecimal value="([0-9]+)"/<valueDecimal value="\1.00"/g
        s/<valueDecimal value="([0-9]+\.)([0-9]?)"/<valueDecimal value="\1\200"/g
        s/<valueDecimal value="([0-9]+\.[0-9])([0-9]?)"/<valueDecimal value="\1\200"/g
        s/(<valueDecimal value="[0-9]+\.[0-9]{2})0+"/\1"/g

        # Handle valueMoney
        /<valueMoney>/,/<\/valueMoney>/ {
            s/(<value value=")([0-9]+)(")/\1\2.00\3/g
            s/(<value value=")([0-9]+\.)([0-9]?)(")/\1\2\300\4/g
            s/(<value value=")([0-9]+\.[0-9])([0-9]?)(")/\1\2\300\4/g
            s/(<value value="[0-9]+\.[0-9]{2})0+(")/\1\2/g
        }
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

# Directory to search for XML files
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

# Find and process each XML file
find "$directory_to_search" -type f -name "*.xml" | while read -r file; do
    echo "Processing $file"
    fix_decimalValues_xml "$file"
done

echo "All XML files processed."