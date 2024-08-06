#!/bin/bash

string="Hello, World!"
char="W"

# Use grep to find the byte offset and cut to extract the index (0-based index)
index=$(echo "$string" | grep -bo "$char" | cut -d: -f1 | head -n1)

# Print the index
echo "Index of '$char': $index"

