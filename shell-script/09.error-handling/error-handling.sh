#!/usr/bin/env bash

# Practice checking command results and reporting errors clearly.

# A filename is required as the first argument.
if [ "$#" -ne 1 ]; then
    echo "Usage: bash error-handling.sh FILENAME" >&2
    exit 1
fi

file_name=$1

# Check this expected failure directly before trying to read the file.
if [ ! -f "$file_name" ]; then
    echo "Error: File not found: $file_name" >&2
    exit 1
fi

# Run a command in an if statement to handle success and failure.
if wc -l < "$file_name"; then
    echo "File check completed."
else
    echo "Error: Could not read the file: $file_name" >&2
    exit 1
fi

echo "Script completed successfully."