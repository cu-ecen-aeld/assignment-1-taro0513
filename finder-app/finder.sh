#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Two arguments are required."
    exit 1
fi

filesdir="$1"
searchstr="$2"

if [ ! -d "$filesdir" ]; then
    echo "$filesdir is not a directory."
    exit 1
fi

X=$(find "$filesdir" -type f | wc -l)

Y=$(grep -r "$searchstr" "$filesdir" | wc -l)

echo "The number of files are $X and the number of matching lines are $Y"
