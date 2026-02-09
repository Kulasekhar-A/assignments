#!/bin/bash

echo "Enter a number:"
read N

# Factorial of 0 or 1 is 1
FACT=1
COUNT=1

while [ $COUNT -le $N ]
do
    FACT=$((FACT * COUNT))
    COUNT=$((COUNT + 1))
done

echo "Factorial of $N is $FACT"