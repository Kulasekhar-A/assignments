#!/bin/bash

ROWS=5
i=1

while [ $i -le $ROWS ]
do
    SPACE=$((ROWS - I))
    STAR=$((2 * i - 1))

    # Print spaces
    while [ $SPACE -gt 0 ]
    do
        echo -n " "
        SPACE=$((SPACE - 1))
    done

    # Print stars
    COUNT=1
    while [ $COUNT -le $STAR ]
    do
        echo -n "*"
        COUNT=$((COUNT + 1))
    done

    echo
    i=$((i + 1))
done