#!/bin/bash
cd ..
source_folder="./files"
for file in "$source_folder"/*.txt; do
    if [[ -f "$file" ]]; then
        first_char=$(basename "$file" | cut -c1 | tr '[:upper:]' '[:lower:]')
        mv "$file" "${first_char}/"
    fi
done
