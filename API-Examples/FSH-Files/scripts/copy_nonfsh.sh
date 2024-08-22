#!/bin/bash

# Function to recursively copy files excluding `.fsh` files
copy_files_exclude_fsh() {
    source_dir="$1"
    target_dir="$2"

    # Find all files in the source directory, excluding `.fsh` files
    find "$source_dir" -type f ! -name "*.fsh" | while read -r filepath; do
        # Determine the relative path of the file
        relative_path="${filepath#$source_dir/}"

        # Create the target directory if it doesn't exist
        target_path="$target_dir/$relative_path"
        target_dirname=$(dirname "$target_path")
        mkdir -p "$target_dirname"

        # Copy the file
        cp "$filepath" "$target_path"
        # echo "Copied $filepath to $target_path"
    done
}

# Fallback for `realpath` if it's not available
get_absolute_path() {
    if command -v realpath >/dev/null 2>&1; then
        realpath "$1"
    else
        echo "$(cd "$(dirname "$1")"; pwd)/$(basename "$1")"
    fi
}

# Usage: Pass the source and target directories as arguments
source_dir=$(get_absolute_path "$1")
target_dir=$(get_absolute_path "$2")

# echo "Source_dir: $source_dir"
# echo "Target_dir: $target_dir"

copy_files_exclude_fsh "$source_dir" "$target_dir"
