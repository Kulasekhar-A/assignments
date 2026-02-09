#!/bin/bash

ROWS=5
i=1

while [ $i -le $ROWS ]
do
    # print spaces
    SPACE=$((ROWS - i))
    while [ $SPACE -gt 0 ]
    do
        echo -n " "
        SPACE=$((SPACE - 1))
    done

    # print stars
    STAR=$((2 * i - 1))
    COUNT=1
    while [ $COUNT -le $STAR ]
    do
        echo -n "*"
        COUNT=$((COUNT + 1))
    done

    echo
    i=$((i + 1))
done
