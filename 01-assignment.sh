#!/bin/bash

FILE=$1

if [ -d "$FILE" ]; then
    echo "Given path: $FILE is a directory"
    echo "Files inside the directory:"
    ls "$FILE"

elif [ -f "$FILE" ]; then
    echo "Given path: $FILE is a file"

    if [ -r "$FILE" ] && [ -w "$FILE" ]; then
        echo "The file is readable and writable"
    elif [ -r "$FILE" ]; then
        echo "The file is readable but not writable"
    elif [ -w "$FILE" ]; then
        echo "The file is writable but not readable"
    else
        echo "The file is neither readable nor writable"
    fi

else
    echo "Given path: $FILE does not exist"
fi
