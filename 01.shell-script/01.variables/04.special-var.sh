#!/bin/sh

# Special variables provide information about the script's execution context and arguments.
echo "All arguments passed to the script: $@"
echo "Number of arguments passed to the script: $#"
echo "First argument: $1"
echo "Real path of the script: $(realpath $0)"
echo "who is running the script: $(whoami)"
echo "PID of the script: $$"
#stop the script for 5 seconds to allow the user to read the output
sleep 5
echo "PID command running in background: $!"
wait $! #wait until the background process is finished
echo "Line number of the script: $LINENO"

#==========Exit status of the last command==========
echo "Previous command exit status: $?"

echo "Total time executed script in seconds: $SECONDS"
