#!/bin/bash

if [ -e $1 ]
then
    echo "File Exists"
else
    echo "File doesn't exists"
fi

Feature	Syntax
File exists	[[ -e filename ]]
Readable	[[ -r filename ]]
Writable	[[ -w filename ]]