#!/bin/bash


# Bash script to organize files in a directory based on their extensions
# Author: Mainuddin Alam Irteja

# Introduce the script to the user
echo -e "Hello there. This bash script helps organizing files based on their extensions.\nIt will create folders for each file extension"

# Prompt user for the directory path
echo "Please give the path to the directory where you wish to organize files: "
read directoryPath


# Check if the given directory exists
if [ -d "$directoryPath" ]; then
  # If it exists, go to it
  cd "$directoryPath"

  # Iterate through the files in the directoryy
  for file in *; do
    # Check if it is a file and not directory
    if [ -f "$file" ]; then
      # Organize the files
      echo "Handling file: $file"

    fi
  done
 

  echo "The files and folders have been organized as follows:"
 # ls -la

# Let the user know that his given directory does not exist
else
  echo "The directory you have given does not exist."
fi 
 
