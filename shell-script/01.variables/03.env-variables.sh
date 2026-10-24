
#!/bin/bash

# Environment variables provide information about the system or user to processes and programs.
# USER commonly contains the username of the account running the script.
echo "Current user: $USER"

# HOME is the current user's home directory, often used as the base for user-specific files.
echo "Home directory: $HOME"

# PWD is the current working directory from which the script is running.
echo "Current directory: $PWD"

# PATH is a colon-separated list of directories searched when running a command.
echo "Command search path: $PATH"

# SHELL commonly contains the path to the user's configured login shell.
echo "Configured shell: $SHELL"
