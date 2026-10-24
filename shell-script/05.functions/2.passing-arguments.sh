#!/usr/bin/env bash

# Demonstrate passing one, multiple, and all arguments to Bash functions.

greet_person() {
    # Require exactly one name argument.
    if [ "$#" -ne 1 ]; then
        echo "Usage: greet_person NAME" >&2
        return 1
    fi

    echo "Hello, $1!"
}

make_label() {
    # $1 is the label name; $2 is its value.
    echo "$1: $2"
}

print_items() {
    # "$@" keeps each argument separate, including values with spaces.
    for item in "$@"; do
        echo "Item: $item"
    done
}

# Call the functions with different input values.
greet_person "Saikiran"
make_label "Environment" "development"
print_items "first item" "second item"