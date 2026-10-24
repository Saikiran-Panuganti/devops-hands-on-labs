#!/usr/bin/env bash

# Show the prompt separately so the read command is easy to see and understand.
echo "Please enter the marks between 0 and 100:"
read -r marks

# -lt means "less than". Bash checks each condition from top to bottom,
# so the first matching range determines the grade.
if (( marks < 33 )); then
    echo "Fail"
elif (( marks < 50 )); then
    # At this point, marks are 33-49.
    echo "Third class"
elif (( marks < 60 )); then
    # At this point, marks are 50-59.
    echo "Second class"
elif (( marks < 75 )); then
    # At this point, marks are 60-74.
    echo "First class"
else
    # 75 or more is a distinction.
    echo "Distinction"
fi

echo "End"