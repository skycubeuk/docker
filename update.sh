#!/bin/bash

cd $HOME/docker/`hostname`

for d in */ ; do
    echo "$d"
    cd $d
    ./go update
    cd ..
done


docker system prune -a --force
