#!/bin/bash

INPUT_FILE="$1"
OUTPUT_FILE="$2"

# Check arguments
if [ -z "$INPUT_FILE" ] || [ -z "$OUTPUT_FILE" ]; then
    echo "Usage: $0 <input_file> <output_file>"
    exit 1
fi

# Check input file exists
if [ ! -f "$INPUT_FILE" ]; then
    echo "Error: Input file does not exist"
    exit 1
fi

# Check read permission
if [ ! -r "$INPUT_FILE" ]; then
    echo "Error: Permission denied to read input file"
    exit 1
fi

# Write header to output file
echo "Filtered ERROR lines from $INPUT_FILE" > "$OUTPUT_FILE"

# Read file line by line
while IFS= read -r LINE
do
    if [[ "$LINE" == *ERROR* ]]; then
        echo "$LINE" >> "$OUTPUT_FILE"
    fi
done < "$INPUT_FILE"

echo "Filtering completed. Output saved to $OUTPUT_FILE"