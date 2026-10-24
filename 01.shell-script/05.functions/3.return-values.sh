#!/usr/bin/env bash

# Demonstrate the difference between function output and an exit status.

add_numbers() {
    # Print a calculation result; capture it with command substitution below.
    local result=$(( $1 + $2 ))
    printf '%s\n' "$result"
}

sum=$(add_numbers 5 3)
echo "The sum is: $sum"

check_service() {
    # systemctl returns 0 when nginx is active and non-zero otherwise.
    systemctl is-active nginx >/dev/null
    # Pass systemctl's status back to the caller. Keep this immediately after
    # the check because any command before it would change the value of $?
    return $?
}

# Use the function's status to choose the next step.
if check_service; then
    echo "Service is running. Continue deployment."
else
    echo "Service is not running. Stop deployment and alert the team." >&2
    exit 1
fi