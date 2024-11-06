#!/bin/bash

# Check if Python is installed
if ! command -v python &> /dev/null
then
    echo "Error: Python 3 is not installed. Please install it first."
    exit 1
fi

# Python script to process JSON files
python_script=$(cat << 'END_PYTHON'
import json
import sys
import os
from decimal import Decimal, ROUND_HALF_UP

def format_to_two_places(value):
    if isinstance(value, (int, float)):
        return float(Decimal(str(value)).quantize(Decimal('0.01'), rounding=ROUND_HALF_UP))
    return value

def process_json(data):
    if isinstance(data, dict):
        for key, value in data.items():
            if key in ['valueDecimal', 'value'] and isinstance(value, (int, float)):
                data[key] = format_to_two_places(value)
            elif isinstance(value, (dict, list)):
                process_json(value)
    elif isinstance(data, list):
        for item in data:
            process_json(item)
    return data

class CustomFloatEncoder(json.JSONEncoder):
    def default(self, obj):
        if isinstance(obj, float):
            return round(obj, 2)
        return super().default(obj)

def process_file(file_path):
    with open(file_path, 'r', encoding='utf-8') as f:
        data = json.load(f)
    
    processed_data = process_json(data)
    
    with open(file_path, 'w', encoding='utf-8') as f:
        json.dump(processed_data, f, indent=2, ensure_ascii=False, cls=CustomFloatEncoder)

if __name__ == "__main__":
    directory = sys.argv[1]
    for root, dirs, files in os.walk(directory):
        for file in files:
            if file.endswith('.json'):
                file_path = os.path.join(root, file)
                print(f"Processing {file_path}")
                process_file(file_path)
END_PYTHON
)

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

# Run the Python script
python -c "$python_script" "$directory_to_search"

echo "All JSON files processed."