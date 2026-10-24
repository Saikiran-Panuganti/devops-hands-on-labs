#!/usr/bin/env bash

# This example checks and installs packages with dnf.
# Run it only on a dnf-based Linux system where package installation is intended.

# ANSI color codes. RESET returns following text to the terminal's normal color.
RED='\033[31m'
GREEN='\033[32m'
YELLOW='\033[33m'
RESET='\033[0m'

# Get the current user's ID. The root user has ID 0.
user_id=$(id -u)

# Store logs in /var/log, which requires root permission to create.
logs_folder="/var/log/shell-practice"
script_name=$(basename "$0")
logs_file="${logs_folder}/${script_name}.log"

# Check for root access before creating the log folder or installing packages.
if [ "$user_id" -ne 0 ]; then
    printf '%b\n' "${RED}Please run this script with sudo access.${RESET}" >&2
    exit 1
fi

# Create the log folder if it does not already exist.
mkdir -p "$logs_folder"

# Append the script start time to the log file.
echo "Script started execution at $(date '+%F %T')" &>> "$logs_file"

validate() {
    # $1 is the exit status of the last command; $2 describes that command.
    if [ "$1" -ne 0 ]; then
        # Show a colored message, but keep ANSI color codes out of the log.
        printf '%b\n' "${2}..${RED}FAILED${RESET}"
        printf '%s\n' "${2}..FAILED" >> "$logs_file"
        exit 1
    else
        printf '%b\n' "${2}..${GREEN}SUCCESS${RESET}"
        printf '%s\n' "${2}..SUCCESS" >> "$logs_file"
    fi
}

# Require package names as arguments, for example: sudo bash colors.sh nginx.
if [ "$#" -eq 0 ]; then
    echo "Usage: sudo bash $0 PACKAGE_NAME [PACKAGE_NAME ...]" >&2
    exit 1
fi

# Check each requested package and install it only if it is not already installed.
for package in "$@"; do
    # Save command output in the log file.
    dnf list installed "$package" &>> "$logs_file"

    if [ "$?" -ne 0 ]; then
        echo "Going to install: $package"
        dnf install "$package" -y &>> "$logs_file"
        validate "$?" "Installing $package"
    else
        printf '%b\n' "${package} already installed...${YELLOW}SKIPPING${RESET}"
        printf '%s\n' "${package} already installed...SKIPPING" >> "$logs_file"
    fi
done

# Append the script completion time to the log file.
echo "Script execution completed at $(date '+%F %T')" &>> "$logs_file"