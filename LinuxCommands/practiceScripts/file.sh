echo "This is a test" > testfile.txt
echo "Appending this line" >> testfile.txt

cat testfile.txt  # Display contents of a file
while read -r line; do
    echo "$line"  # Read file line by line
done < testfile.txt
