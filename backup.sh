#!/bin/bash

# checkinig the arguments
if [ $# -ne 2 ]; then
    echo "usage: $0 directory1 directory1" <&2
    exit -1
fi

#checking if both are directories
if [ ! -d $1 ]; then
    echo "$1 is not a directory" <&2
    exit -1
elif [ ! -d $2 ]; then
    echo "$2 is not a directory" <&2
    exit -1
fi

dir1=$1
dir2=$2