#!/bin/bash

# Bash does not require a variable's type to be declared.
# It stores variable values as text and interprets them as numbers when used
# in arithmetic expressions.

# 1. String: use quotes to store text, especially when it contains spaces.
NAME="Saikiran"
ROLE="DevOps Engineer"

echo "String example:"
echo "Name: $NAME"
echo "Role: $ROLE"
echo

# 2. Integer: assign whole numbers normally; use $(( )) to do arithmetic.
# The result is stored in TOTAL as the text representation of the number.
NUM1=10
NUM2=20
TOTAL=$((NUM1 + NUM2))

echo "Integer example:"
echo "$NUM1 + $NUM2 = $TOTAL"
echo

# 3. Indexed array: store multiple values under numeric indexes.
# Bash array indexes start at 0, so TOOLS[0] is the first value.
TOOLS=("Docker" "Kubernetes" "Terraform")

echo "Indexed array example:"
echo "First tool: ${TOOLS[0]}"
# The braces identify the array variable and [@] expands all its values.
echo "All tools: ${TOOLS[@]}"
echo

# 4. Associative array: store values under named keys instead of numeric indexes.
# Associative arrays require Bash 4 or later.
declare -A SERVER
SERVER[dev]="Development"
SERVER[prod]="Production"

echo "Associative array example:"
echo "dev environment: ${SERVER[dev]}"
echo "prod environment: ${SERVER[prod]}"
echo

# 5. Boolean-like value: Bash has no native Boolean data type.
# Here, the text "true" is a convention that the if statement checks.
DEPLOYMENT_STATUS=true

echo "Boolean-like value example:"
if [ "$DEPLOYMENT_STATUS" = "true" ]; then
    echo "Deployment successful"
else
    echo "Deployment failed"
fi

# Bash arithmetic with $(( )) handles integers, not decimal numbers.
# Use a tool such as bc or Python when a calculation needs floating-point values.