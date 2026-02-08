#!/bin/bash

DIR="$1"

if [ "$(id -u)" -ne 0 ]; then
    echo "Please run as root"
    exit 1
fi

if [ -z "$DIR" ] || [ ! -d "$DIR" ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

echo "Replacing FOO → BAR in writable .conf files only..."

find "$DIR" -type f -name "*.conf" -writable -exec perl -pi -e 's/FOO/BAR/g' {} +

echo "Replacement completed (protected files skipped safely)"
