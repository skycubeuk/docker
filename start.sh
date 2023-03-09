#!/bin/bash

cd $HOME/docker/`hostname`

for d in */ ; do
    echo "$d"
    cd $d

if [ -f "dont_stop" ] ; then
    echo "Skipping."
    cd ..
else
    ./go start
    cd ..
fi
done

