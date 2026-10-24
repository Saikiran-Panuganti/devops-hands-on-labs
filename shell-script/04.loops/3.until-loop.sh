#!/usr/bin/env bash

counter=1
until [ "$counter" -gt 5 ]
do
    echo "Iteration $counter"
    ((counter++))
done