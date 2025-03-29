#!/usr/bin/env bash

# Removes all files written in .gitignore of any git repository (multiple) present inside current directory
# To find list of all git repos inside current directory you can use: "find . -name .git -type d -prune"

find . -name .git -type d -prune | while read git_path; do
    project_root=$(dirname "$git_path")
    
    if [ -f "$project_root/.gitignore" ]; then
        echo "Cleaning ignored files in: $project_root"
        (cd "$project_root" && git clean -fdX)  # Remove only ignored files
    fi
done

echo "Gitignore cleanup completed."
