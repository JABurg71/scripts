#!/bin/bash
# Run fzf to select a file
selected_file=$(rg --files | fzf)
# Check if a file was selected
if [ -n "$selected_file" ]; then
    # Check if the selected file is a directory
    if [ -d "$selected_file" ]; then
        cd "$selected_file"
    else
        # If the selected file is not a directory, cd to its parent directory
        nvim "$selected_file"
    fi
fi
