#!/bin/bash


# Check if the number of arguments is correct
if [ $# -ne 1 ]; then
    echo "Usage: $0 <file containing list of files>"
    exit 1
fi

# Read the file line by line and remove the files
while read file; do
    if [ -f $file ]; then
        rm $file
        echo "File $file removed."
    else
        echo "File $file does not exist."
    fi
done < $1
