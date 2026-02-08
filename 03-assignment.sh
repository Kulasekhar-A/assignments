#!/bin/bash

DIR="$1"

# Check argument
if [ -z "$DIR" ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

# Check directory exists
if [ ! -d "$DIR" ]; then
    echo "Error: Directory does not exist"
    exit 1
fi

# Replace FOO with BAR in all .conf files
find "$DIR" -type f -name "*.conf" -exec sed -i 's/FOO/BAR/g' {} +

echo "Replacement completed: FOO → BAR in all .conf files"