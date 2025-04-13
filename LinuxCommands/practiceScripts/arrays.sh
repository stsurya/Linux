array=(1 2 3 4 5)

echo "Second element: ${#array[@]}"

for var in ${array[@]}
do 
    echo $var
done