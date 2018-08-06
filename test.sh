#!/bin/bash

check_all_locks () {
    echo "Checking locks..."

    file_count=$(ls -d ./*.lock | wc -l)

    for i in ./*.lock
        do
            if [ -f $i ]
            then
                echo "==> $i File Exists"
                sleep 1;
            else
                echo "$i Fail. No locks found!"
        fi
    done

    echo "We have ==> ${file_count} locks";
     sleep 2;

if [ ! -f ./done.lock ] || [ $file_count != 8 ]; then
    echo "#### We do not have all locks on"
    echo "#### means that the bulk isn't ready"
    sleep 1;
    return 0
    else
    echo "We have all locks on! let's do the job."
  fi
 return 1
}

while check_all_locks
do
    echo 'Waiting for it...'
    sleep 25;
done
echo 'Brace yourselves Server is starting...'
sleep 2;
exit
