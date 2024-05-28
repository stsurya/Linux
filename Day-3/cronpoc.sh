#!/bin/bash/
# This script will create a file and write timestamp in afile

touch /mnt/c/Users/stchatrathi/Desktop/POCs/Linux/output.txt

$Time=$(date)
echo Executed at $Time >> /mnt/c/Users/stchatrathi/Desktop/POCs/Linux/output.txt
