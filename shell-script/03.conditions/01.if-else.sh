#!/usr/bin/env bash

# This example requires a Linux system that uses dnf.
# It installs nginx and the MySQL client, so running it changes the system.

# id -u prints the current user's numeric ID. The root user has ID 0.
user_id=$(id -u)

# -ne means "not equal to". Stop if the script is not running as root.
if [ "$user_id" -ne 0 ]; then
    echo "Please run this script with sudo access."
    exit 1
fi

echo "Proceeding..."

# Install nginx. The -y option automatically answers yes to the prompt.
dnf install nginx -y

# $? contains the exit status of the command immediately before it.
# A status other than 0 means the installation command failed.
if [ "$?" -ne 0 ]; then
    echo "Nginx installation failed."
    exit 1
else
    echo "Nginx installation succeeded."
fi

# Install the MySQL client.
dnf install mysql -y

# Check the exit status of the MySQL installation command.
if [ "$?" -ne 0 ]; then
    echo "MySQL client installation failed."
    exit 1
else
    echo "MySQL client installation succeeded."
fi

echo "Still proceeding..."
