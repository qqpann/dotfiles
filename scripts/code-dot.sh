#!/bin/bash

# This script opens a .code-workspace file in the current directory if one exists.
# If no .code-workspace file is found, it opens the current directory in Cursor.

# Find a .code-workspace file in the current directory. 
# The 'find' command is used to search for files matching "*.code-workspace".
# '-maxdepth 1' ensures only the current directory is searched (not subdirectories).
# '-print -quit' prints the name of the first matching file and then exits.
workspace_file=$(find . -maxdepth 1 -name "*.code-workspace" -print -quit)

# Check if a workspace file was found.
# The 'if' statement checks if the variable 'workspace_file' is non-empty.
if [[ -n $workspace_file ]]; then
    # If a workspace file is found, open it with Cursor.
    # 'cursor' is the command line interface for Cursor.
    # "$workspace_file" is the path to the workspace file found by 'find'.
    cursor "$workspace_file"
else
    # If no workspace file is found, open the current directory in Cursor.
    cursor .
fi
