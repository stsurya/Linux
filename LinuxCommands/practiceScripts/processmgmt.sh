#!/bin/bash

# Start background process
sleep 60 &
pid=$!

echo "Started background process with PID: $pid"

# Check if it's still running
if ps -p $pid > /dev/null
then
    echo "Process $pid is still running"
else
    echo "Process $pid is not running"
fi

# Optional: Kill the process
kill $pid
echo "Process $pid killed"
