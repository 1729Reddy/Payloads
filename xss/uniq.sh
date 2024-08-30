#!/bin/bash

for file in /home/kali/Desktop/Payloads/xss/*.txt; do
    # Properly handle file paths with spaces
    sorted_unique_file="/home/kali/Desktop/Payloads/XSS/$(basename "$file" .txt)"
    
    # Sort and find unique entries, then redirect the output
    cat "$file" | anew | tee -a "$sorted_unique_file"
done
