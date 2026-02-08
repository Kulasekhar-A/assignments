#!/bin/bash

# Ask for password length
echo "Enter password length:"
read LENGTH

# Validate input
if ! [[ "$LENGTH" =~ ^[0-9]+$ ]] || [ "$LENGTH" -le 0 ]; then
    echo "Please enter a valid positive number"
    exit 1
fi

# Character set: uppercase, lowercase, digits, special characters
CHARS='A-Za-z0-9!@#$%^&*()_+'

# Generate random password
PASSWORD=$(tr -dc "$CHARS" < /dev/urandom | head -c "$LENGTH")

# Output password
echo "Generated random password:"
echo "$PASSWORD"