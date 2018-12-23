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


checkFiles1in2(){
    #check file of $1 in $2
    dir1=$1
    dir2=$2
    tempFile1="$(find $dir1 -type f | sort) "
    for line in $tempFile1; do
        # echo "${line#$dir1}"
        text="${line#$dir1}"
        if [ ! -e "$dir2$text" ]; then
            echo "${line#$dir1}"
        fi
    done


}

echo "Files copied from /dir1 to /dir2 are:"
checkFiles1in2 $1 $2
echo "Files copied from /dir2 to /dir1 are:"
checkFiles1in2 $2 $1