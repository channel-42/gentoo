#!/bin/bash
# maxs updir cd's
LEVELS=3

find_make(){
    #find makefile
    local CNT=0
    while [[ $(ls -la | grep -e "[Mm]ake.*") == "" && $CNT -lt $LEVELS ]] ; do
        cd ..
        CNT=$(($CNT + 1 ))
    done
    echo "$(pwd)"
}
# get main file location variables
file=$(readlink -f "$1")
dir=$(dirname "$file")

# goto files dir and search for potential makefile
cd "$dir" && make_path=$(find_make)|| exit
# goto potential makefile
cd "$make_path"
# try to make
make || echo "Error: target not found"
clear
