#!/bin/bash

# Check if at least one number is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <num1> <num2> ... <numN>"
    exit 1
fi

# Assume first number is the largest
LARGEST=$1

# Loop through all arguments
for NUM in "$@"
do
    if [ "$NUM" -gt "$LARGEST" ]; then
        LARGEST=$NUM
    fi
done

echo "Largest number is $LARGEST"