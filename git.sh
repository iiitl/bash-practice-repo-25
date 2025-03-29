#!/bin/bash

REPOS=$(find . -name .git -type d -prune | sed 's|/.git||')

for REPO in $REPOS; do
    echo "Processing repository: $REPO"

    if [[ -f "$REPO/.gitignore" ]]; then
        echo "Found .gitignore in $REPO"
        cd "$REPO" || exit
        git rm -r --cached -q $(git ls-files --ignored --exclude-standard) 2>/dev/null
        rm -rf $(git ls-files --ignored --exclude-standard) 2>/dev/null
        echo "Removed ignored files from $REPO"
        cd - > /dev/null
    else
        echo "No .gitignore found in $REPO"
    fi
done

echo "Cleanup completed!"
