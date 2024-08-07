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
      # Organize the file
      echo ""
      echo "Handling file: $file"
     
      # Check if the file contains a dot
      if [[ "$file" == *.* ]]; then
          # Extract their extension
          extension="${file##*.}"
          echo "The extension is: $extension"
          
          # Organize the files depending on the extension's case
          case "$extension" in
              # Organize documents
              pdf | doc | docx | txt | xls | xlsx | ppt | pptx)
              mv "$file" ./Documents || mkdir Documents && mv "$file" ./Documents             
                  ;;

              # Organize images
              jpg | jpeg | png | gif | bmp)
              mv "$file" ./Images || mkdir Images && mv "$file" ./Images             
                  ;;

              # Organize audios
              mp3 | wav | flac)
              mv "$file" ./Audios || mkdir Audios && mv "$file" ./Audios             
                  ;;

              # Organize videos
              mp4 | avi | mkv | mov)
              mv "$file" ./Videos || mkdir Videos && mv "$file" ./Videos             
                  ;;
              
              # Organize programs       
              py | java | c | cpp | js | sh | ts | cs | go | rb | swift | kt | html |css | sql | xml | json)
              mv "$file" ./Programs || mkdir Programs && mv "$file" ./Programs             
                  ;;
              *)
                  # Display a line
                  echo "" 
                  ;;
          # Ending the case block
          esac
             
       # Handle when file does not contain a dot
       else
           mv "$file" ./Others || mkdir Others && mv "$file" ./Others             
 
      # Ending the if block which handles if file contains a dot
      fi
    
    # Ending the if block which checks if it is a file  
    fi

  # Ending the for block
  done
  
  echo ""
  echo "The files and folders have been organized as follows:"
 # ls -la

# Let the user know that his given directory does not exist
else
  echo "The directory you have given does not exist."

# Ending the main if block
fi 
 
