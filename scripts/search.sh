#!/bin/bash
# Search for files containing a specified word in the current directory and its subdirectories

# Check if the word argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <word>"
    exit 1
fi

search_word="$1"

echo "Searching for files with the word '$search_word' in the current directory and its subdirectories..."

# Find files containing the specified word
files_with_occurrences=$(grep -r -l -w "$search_word" ./)

# Initialize total occurrences counter
total_occurrences=0

# Iterate over files with occurrences
while IFS= read -r file; do
    # Count occurrences in each file
    occurrences=$(grep -o -w -c "$search_word" "$file")

    # Get the file name after the first slash
    file_name=$(echo $file | cut -d'/' -f2-)
    # Print file name, occurrences count, and occurrences
    echo "File: $file_name | Occurrences: $occurrences"

    # Increment total occurrences counter
    ((total_occurrences += occurrences))
done <<< "$files_with_occurrences"

# Print total number of files with at least 1 occurrence
total_files=$(echo "$files_with_occurrences" | wc -l)
echo "Total files with at least 1 occurrence: $total_files"

# Print total number of occurrences in all files
echo "Total occurrences in all files: $total_occurrences"

echo "Search completed."
