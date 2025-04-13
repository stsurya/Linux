read n

if [ $n -lt 0 ]
then
    trap "echo 'Cleaning up before exit...'" EXIT
fi