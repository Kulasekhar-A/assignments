#!/bin/bash

echo "Enter number of terms:"
read N

A=0
B=1

for i in {1..N}
do
    echo $A
    C=$((A + B))
    A=$B
    B=$C
done