#!/usr/bin/env bash

# This script demonstrates condition operators with familiar daily examples:
# checking a name, age, weather, and shopping budget. It does not change files.

# String operators compare text.
NAME="Saikiran"
WEATHER="rainy"
OPTIONAL_NOTE=""

echo "String checks:"
# "=" checks whether two strings are equal.
if [ "$NAME" = "Saikiran" ]; then
    echo "Hello, Saikiran!"
fi

# "!=" checks whether two strings are different.
if [ "$WEATHER" != "sunny" ]; then
    echo "The weather is not sunny."
fi

# -n checks that a string is not empty; -z checks that it is empty.
if [ -n "$WEATHER" ]; then
    echo "Weather information is available: $WEATHER"
fi

if [ -z "$OPTIONAL_NOTE" ]; then
    echo "There is no extra note for today."
fi
echo

# Numeric operators compare whole numbers (integers).
# This example uses Saikiran's age and a simple shopping budget.
AGE=25
SHOPPING_BUDGET=50
ITEM_PRICE=30

echo "Number checks:"
# -eq means equal to; -ne means not equal to.
if [ "$AGE" -eq 25 ]; then
    echo "Age is 25."
fi

if [ "$AGE" -ne 0 ]; then
    echo "Age is not zero."
fi

# -gt means greater than; -lt means less than.
if [ "$AGE" -gt 18 ]; then
    echo "Saikiran is older than 18."
fi

if [ "$ITEM_PRICE" -lt "$SHOPPING_BUDGET" ]; then
    echo "The item costs less than the shopping budget."
fi

# -ge means greater than or equal to; -le means less than or equal to.
if [ "$AGE" -ge 18 ]; then
    echo "Saikiran is 18 or older."
fi

if [ "$ITEM_PRICE" -le "$SHOPPING_BUDGET" ]; then
    echo "The item is within the shopping budget."
fi
echo

# File operators check files and directories.
# This script itself provides a file that exists for these demonstrations.
THIS_SCRIPT="$0"
CURRENT_DIRECTORY="."

echo "File and directory checks:"
if [ -f "$THIS_SCRIPT" ]; then
    echo "This script is a regular file."
fi

if [ -d "$CURRENT_DIRECTORY" ]; then
    echo "The current location is a directory."
fi

# -e checks whether a path exists; -r checks whether it can be read.
if [ -e "$THIS_SCRIPT" ]; then
    echo "The script file exists."
fi

if [ -r "$THIS_SCRIPT" ]; then
    echo "The script file can be read."
fi

# -w checks whether a path can be written to; no file is written by this test.
if [ -w "$CURRENT_DIRECTORY" ]; then
    echo "The current directory is writable."
fi
echo

# Logical operators combine or reverse conditions.
echo "Combined checks:"
# && means AND: both conditions must be true to plan an outdoor walk.
if [ "$WEATHER" = "sunny" ] && [ "$AGE" -ge 18 ]; then
    echo "It is sunny and Saikiran is an adult: an outdoor walk sounds good."
else
    echo "The outdoor-walk conditions are not both met."
fi

# || means OR: either condition is enough to suggest taking an umbrella.
if [ "$WEATHER" = "rainy" ] || [ "$WEATHER" = "cloudy" ]; then
    echo "Take an umbrella."
fi

# ! means NOT: it reverses the result of the test.
if ! [ "$WEATHER" = "sunny" ]; then
    echo "It is not sunny today."
fi