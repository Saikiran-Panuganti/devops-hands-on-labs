#!/usr/bin/env bash

# Practice common input and output redirections.
# The examples create files only inside this practice folder.
practice_dir="redirection-practice"
mkdir -p "$practice_dir"

# > sends standard output to a file and replaces its contents.
echo "This line is written to a file." > "$practice_dir/output.txt"

# >> adds another line without removing the existing content.
echo "This line is appended to the file." >> "$practice_dir/output.txt"

# < reads input from a file. sort reads the names from names.txt.
printf "pear\napple\norange\n" > "$practice_dir/names.txt"
sort < "$practice_dir/names.txt" > "$practice_dir/sorted-names.txt"

# Input redirection can also provide a file to wc without naming it as an
# argument. The number of lines in names.txt is printed in the terminal.
echo "Number of names in the input file:"
wc -l < "$practice_dir/names.txt"

# 2> sends error output (file descriptor 2) to a separate file.
(echo "This is an example error message." >&2) 2> "$practice_dir/errors.txt"

# &> sends both standard output and standard error to one file.
# This operator is supported by Bash.
{
    echo "This is standard output."
    echo "This is standard error." >&2
} &> "$practice_dir/all-output.txt"

# tee displays the message and appends it to the output file.
echo "This message appears here and in the file." | tee -a "$practice_dir/output.txt"

# Print the sorted file so the result of input redirection is easy to see.
echo "Sorted names:"
cat "$practice_dir/sorted-names.txt"

echo "Practice files were saved in: $practice_dir"