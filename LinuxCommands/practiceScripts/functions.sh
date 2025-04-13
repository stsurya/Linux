#!/bin/bash

get_sum(){
    echo $(($1 + $2))
}

echo "$(get_sum 10 20)"