#!/bin/bash

declare -A user

user[name]=$1
user[role]=$2
user[exp]=$3

echo "${user[name]} is a ${user[role]} with ${user[exp]} of experince"
echo "Details:"
for var in ${!user[@]}
do
    echo "$var: ${user[$var]}"
done