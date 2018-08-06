#!/bin/sh

while [ ! -f ./done.lock ]
do
    echo 'Waiting for it...';
    sleep 10
done

# while false; do  sleep 1; done

# Wait for the data to be available
# until [ -d ./dest ]; do echo 'Waiting for dest...'; sleep 1; done;
echo './start.sh';
# ./start.sh