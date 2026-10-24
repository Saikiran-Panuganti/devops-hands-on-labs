#!/usr/bin/env bash

# Demonstrate defining reusable functions and calling them from the main script.

# Define functions before calling them so their purpose is easy to find.
greet() {
    echo "Hello! Welcome to Bash."
}

show_backup_message() {
    echo "The backup is starting."
}

describe_file() {
    # Use local so this temporary variable does not affect the rest of the script.
    local file_name="$1"
    echo "The file is: $file_name"
}

# Main part of the script: call each function when its task is needed.
greet

show_backup_message

# Functions can be called more than once.
show_backup_message

describe_file "notes.txt"