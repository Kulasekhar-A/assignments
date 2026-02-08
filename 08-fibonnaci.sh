#!/bin/bash

A=0
B=1
COUNT=1

while [ $COUNT -le $N ]
do
    echo $A
    C=$((A + B))
    A=$B
    B=$C
    COUNT=$((COUNT + 1))
done