#!/bin/bash

FILE=$1

FILE="$1"

# Check argument
if [ -z "$FILE" ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

# Check file exists
if [ ! -e "$FILE" ]; then
    echo "Error: File does not exist"
    exit 1
fi

# Check regular file
if [ ! -f "$FILE" ]; then
    echo "Error: Not a regular file"
    exit 1
fi

# Check read permission
if [ ! -r "$FILE" ]; then
    echo "Error: Permission denied"
    exit 1
fi

# Check empty file
if [ ! -s "$FILE" ]; then
    echo "File is empty"
    echo "Lines      : 0"
    echo "Words      : 0"
    echo "Characters : 0"
    exit 0
fi

# File statistics
LINES=$(wc -l < "$FILE")
WORDS=$(wc -w < "$FILE")
CHARS=$(wc -c < "$FILE")

echo "File statistics for: $FILE"
echo "Lines      : $LINES"
echo "Words      : $WORDS"
echo "Characters : $CHARS"