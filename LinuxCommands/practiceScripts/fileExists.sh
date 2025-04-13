#!/bin/bash

if [ -e $1 ]
then
    echo "File Exists"
    if [ -r "$1" ] && [ -w "$1" ]
    then
        echo "File is readable and writeable"
    fi
else
    echo "File doesn't exists"
fi