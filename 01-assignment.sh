#!/bin/bash

FILE=$1

# Check if argument is given
if [ $# -eq 0 ]; then
    echo "Please provide file or directory name"
    exit 1
fi

# Check existence
if [ -e "$FILE" ]; then
    echo "File exists: $FILE"
else
    echo "File not present: $FILE"
    exit 1
fi

# Check readable
if [ -r "$FILE" ]; then
    echo "Readable: YES"
else
    echo "Readable: NO"
fi

# Check writable
if [ -w "$FILE" ]; then
    echo "Writable: YES"
else
    echo "Writable: NO"
fi

# If directory, list files
if [ -d "$FILE" ]; then
    echo "It is a directory. Files inside:"
    ls -l "$FILE"
fi
