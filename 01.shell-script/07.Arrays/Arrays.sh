#!/usr/bin/env bash

# Store several server names in one array.
servers=("web01" "web02" "web03")

# Array indexes start at 0, so this prints the first server.
echo "First server: ${servers[0]}"

# Print how many servers are in the array.
echo "Number of servers: ${#servers[@]}"

# Loop through the array and print each server.
for server in "${servers[@]}"; do
    echo "Server: $server"
done
