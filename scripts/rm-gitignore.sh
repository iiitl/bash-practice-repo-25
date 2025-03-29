#!/usr/bin/env bash

# Removes all files written in .gitignore of any git repository (multiple) present inside current directory
# To find list of all git repos inside current directory you can use: "find . -name .git -type d -prune"

find . -name .git -type d -prune | while read git_path; do
    project_root=$(dirname "$git_path")
    [ -f "$project_root/.gitignore" ] && xargs rm -f < "$project_root/.gitignore"
done

echo "Gitignore cleanup completed."