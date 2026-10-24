#!/usr/bin/env bash

# Practice an EXIT trap using a temporary file.
# The cleanup function runs when this script exits.

temporary_file=$(mktemp)

cleanup() {
    # Remove the temporary file created by this script.
    rm -f "$temporary_file"
    echo "Cleanup complete: temporary file removed."
}

# Register cleanup immediately after creating the temporary file.
trap 'cleanup' EXIT

echo "Temporary data for this practice script." > "$temporary_file"
echo "Created a temporary file: $temporary_file"
echo "The EXIT trap will clean it up when the script finishes."