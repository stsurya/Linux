time=$(date +%H)
if [ $time -lt 12 ]
then
    echo "It's morning"
elif [ $time -lt 18 ]
then
    echo "It's afternoon"
else
    echo "Nihgt"
fi