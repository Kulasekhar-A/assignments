#!/bin/bash

A=0
B=1

for i in {1..N}
do
    echo $A
    C=$((A + B))
    A=$B
    B=$C
done