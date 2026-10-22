#!/usr/bin/env bash

# Use elif ("else if") when there are several possible outcomes.
# Bash checks the conditions from top to bottom and runs only the first
# matching branch.
NAME="Saikiran"
SCORE=85

# -ge means "greater than or equal to" and is used to compare integers.
if [ "$SCORE" -ge 90 ]; then
    echo "$NAME: Excellent"
elif [ "$SCORE" -ge 70 ]; then
    # This branch is reached only if the score was less than 90.
    echo "$NAME: Good job"
else
    # This branch runs when neither score condition above was true.
    echo "$NAME: Keep practicing"
fi

# Try changing SCORE to 95, 75, or 60 to see each result.