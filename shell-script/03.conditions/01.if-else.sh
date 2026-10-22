#!/usr/bin/env bash

# A condition lets Bash decide whether to run a block of commands.
# This example compares the NAME string with "Saikiran".
NAME="Saikiran"

# Quote variable values in tests to handle empty values and spaces safely.
# "=" compares strings; it is not a numeric comparison operator.
if [ "$NAME" = "Saikiran" ]; then
    echo "Hello, Saikiran!"
else
    # The else block runs only when the if condition is false.
    echo "Hello, visitor!"
fi

# Change NAME above to another value and run the script again to see the else
# branch. The fi keyword closes the complete if-else statement.