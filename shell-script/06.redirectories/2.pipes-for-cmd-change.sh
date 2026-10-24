#!/usr/bin/env bash

# Practice using pipes to send one command's output to another command.

# printf produces a list, sort orders it, and uniq removes adjacent duplicates.
# Sorting first places duplicate values next to each other for uniq.
printf "pear\napple\npear\norange\n" | sort | uniq

echo

# grep selects lines containing ERROR, and wc -l counts the matching lines.
printf "INFO: Service started\nERROR: Connection failed\nINFO: Retrying\nERROR: Timeout\n" \
    | grep "ERROR" \
    | wc -l

echo

# awk prints the first and third whitespace-separated fields from each line.
printf "Mina 25 developer\nRavi 31 operator\n" | awk '{print $1, $3}'