#!/bin/bash

# Define the directory where the file will be created
output_dir="/mnt/c/Users/stchatrathi/Desktop/POCs/Linux/Day-1"

# Generate a filename with the current timestamp
touch file1.txt
filename="file1.txt"

# Generate random text
random_text=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 20)

# Write the random text to the file
echo "$random_text" > "$filename"

# Optionally, you can log the file creation
echo "Created file: $filename with content: $random_text"
