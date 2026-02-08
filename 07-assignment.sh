#!/bin/bash

FILE="$1"

# Check argument
if [ -z "$FILE" ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

# Check file exists
if [ ! -f "$FILE" ]; then
    echo "Error: File does not exist"
    exit 1
fi

# Check read permission
if [ ! -r "$FILE" ]; then
    echo "Error: Permission denied"
    exit 1
fi

# Word frequency counter (top 5)
tr '[:upper:]' '[:lower:]' < "$FILE" | \
tr -c 'a-z0-9' '\n' | \
sort | \
uniq -c | \
sort -nr | \
head -5