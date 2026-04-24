#!/bin/bash
dir="${1:-.}"
for file in "$dir"/*; do
    [ -e "$file" ] && echo "$(stat -c "%A" "$file") $file"
done
