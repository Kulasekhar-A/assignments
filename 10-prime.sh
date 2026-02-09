#!/bin/bash

echo "Enter a number:"
read N

# Numbers less than or equal to 1 are not prime
if [ "$N" -le 1 ]; then
    echo "Not a Prime Number"
    exit 0
fi

i=2

while [ $i -le $((N / 2)) ]
do
    if [ $((N % i)) -eq 0 ]; then
        echo "Not a Prime Number"
        exit 0
    fi
    i=$((i + 1))
done

echo "Prime Number"