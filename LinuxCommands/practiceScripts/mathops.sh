math_ops(){
    echo $(($1 $3 $2))
}

echo "$(math_ops 1 2 '*')"