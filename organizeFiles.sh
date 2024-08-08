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
          
          # Organize the files depending on the extension's case
          case "$extension" in
             
              # Organize documents
              pdf | doc | docx | txt | xls | xlsx | ppt | pptx)
              # Check if Documents directory exists of not 
              if [ -d "./Documents" ]; then
                  mv "$file" "./Documents"
              else
                  mkdir Documents
                  chmod 777 "./Documents"
                  mv "$file" "./Documents"
              # Ending the if block for checking the Documents directory
              fi
              echo "$file is in the Documents directory"
                   ;;

              # Organize images
              jpg | jpeg | png | gif | bmp)
              # Check if Images directory exists of not 
              if [ -d "./Images" ]; then
                   mv "$file" "./Images"
              else
                   mkdir Images
                   chmod 777 "./Images"
                   mv "$file" "./Images"
              # Ending the if block for checking the Images directory
              fi
              echo "$file is in the Images directory"
                  ;;

              # Organize audios
              mp3 | wav | flac)
              # Check if Audios directory exists of not 
              if [ -d "./Audios" ]; then
                   mv "$file" "./Audios"
              else
                   mkdir Audios
                   chmod 777 "./Audios"
                   mv "$file" "./Audios"
              # Ending the if block for checking the Audios directory
              fi
              echo "$file is in the Audios directory"
                  ;;

              # Organize videos
              mp4 | avi | mkv | mov)
              # Check if Videos directory exists of not 
              if [ -d "./Videos" ]; then
                   mv "$file" "./Videos"
              else
                   mkdir Videos
                   chmod 777 "./Videos"
                   mv "$file" "./Videos"
              # Ending the if block for checking the Videos directory
              fi
              echo "$file is in the Videos directory"
                  ;;
              
              # Organize programs       
              py | java | c | cpp | js | sh | ts | cs | go | rb | swift | kt | html |css | sql | xml | json)
              # Check if Programs directory exists of not 
              if [ -d "./Programs" ]; then
                   mv "$file" "./Programs"
              else
                   mkdir Programs
                   chmod 777 "./Programs"
                   mv "$file" "./Programs"
              # Ending the if block for checking the Programs directory
              fi
              echo "$file is in the Programs directory"
              ;;
              *)
                  # Display a line
                  echo "" 
                  ;;
          # Ending the case block
          esac
             
       # Handle when file does not contain a dot
       else
           # Check if Others directory exists of not 
           if [ -d "./Others" ]; then
                mv "$file" "./Others"
           else
                mkdir Others
                chmod 777 "./Others"
                mv "$file" "./Others"
           # Ending the if block for checking the Others directory
           fi
           echo "$file is in the Others directory"
     
      # Ending the if block which handles if file contains a dot
      fi
    
    # Ending the if block which checks if it is a file  
    fi

  # Ending the for block
  done
  
  echo ""
  echo "Your organized directory looks as follows: "
  ls -la

# Let the user know that his given directory does not exist
else
  echo "The directory you have given does not exist."

# Ending the main if block
fi 

