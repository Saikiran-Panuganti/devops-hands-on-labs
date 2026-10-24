#!/usr/bin/env bash

counter=1
while [ "$counter" -le 5 ]
do
    echo "Iteration $counter"
    ((counter++))
done