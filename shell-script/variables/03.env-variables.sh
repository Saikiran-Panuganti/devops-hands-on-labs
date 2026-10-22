
#!/bin/bash

# Environment variables are variables that store information about the system or user and make that information available to processes and programs.
# $0 - Name of the script
echo "Script name: $0"

# $1 and $2 - First and second arguments
echo "First argument: $1"
echo "Second argument: $2"

# $@ - All arguments passed to the script
echo "All arguments: $@"

# $# - Total number of arguments
echo "Number of arguments: $#"

# $$ - Process ID of the current script
echo "Script process ID: $$"

# $USER - Current username
echo "Current user: $USER"

# $HOME - Home directory of the current user
echo "Home directory: $HOME"

# $PWD - Current working directory
echo "Current directory: $PWD"

# $? - Exit status of the previous command
echo "Exit status: $?"

# $SECONDS - Seconds elapsed since the script started
echo "Script running time: $SECONDS seconds"
