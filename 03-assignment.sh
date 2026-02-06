#!/bin/bash

DIR=$1

if [ -z "$DIR" ]; then
  echo "Usage: $0 <directory>"
  exit 1
fi

find "$DIR" -type f -name "*.conf" -exec sed -i 's/HELLO/WORLD/g' {} +