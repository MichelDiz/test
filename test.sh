#!/bin/bash
while [ ! -f ./done.lock ];
do;
    echo 'Waiting for it...';
    sleep 10;
done;
echo './start.sh';
# ./start.sh