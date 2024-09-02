#!/bin/bash

# Check if an argument is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <url_list_file>"
    exit 1
fi

# Assign the first argument to a variable
url_list_file=$1

# Check if the file exists
if [ ! -f "$url_list_file" ]; then
    echo "File not found: $url_list_file"
    exit 1
fi

# Iterate over each line in the file
while IFS= read -r url; do
    # Extract the file name from the URL
    filename=$(basename "$url")

    # Check if the file already exists
    if [ -f "$filename" ]; then
        echo "File $filename already exists, skipping..."
    else
        # Download the file using curl
        echo "Downloading $filename..."
        curl -O "$url"
    fi
done < "$url_list_file"

echo "Download complete."
