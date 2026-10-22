#!/usr/bin/env bash

# A nested if is an if statement inside another if statement.
# The inner condition is checked only when the outer condition is true.
NAME="Saikiran"
WEATHER="sunny"

# First, check whether the name matches. String comparisons use "=".
if [ "$NAME" = "Saikiran" ]; then
    echo "Hello, $NAME!"

    # This weather check is inside the name check, so it runs only for Saikiran.
    if [ "$WEATHER" = "sunny" ]; then
        echo "It is sunny. Have a great day outside!"
    else
        echo "The weather is not sunny. Have a nice day indoors!"
    fi
else
    # If the outer condition is false, Bash skips the inner if entirely.
    echo "This example is set up for Saikiran."
fi

# Change NAME or WEATHER above to try the other branches.