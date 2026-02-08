#!/bin/bash

echo "Enter a string or number:"
read INPUT

# Reverse the input
REVERSE=$(echo "$INPUT" | rev)

if [ "$INPUT" = "$REVERSE" ]; then
    echo "Palindrome"
else
    echo "Not a Palindrome"
fi