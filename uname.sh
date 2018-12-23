#!/bin/bash

# verifying the arguments
if [ $# -ne 2 ]; then
    echo "usage: $0 username passwdfile" <&2
    exit -1
fi

username=$2
file=$1

# verifying if the file exits
if [ ! -f $file ]; then
    echo "$file is not a file" <&2
    exit -1
fi

cat $file | while read line; do
    IFS=':' read -r -a array <<< "$line"
    if [ "${array[0]}" = "$username" ]; then
        echo "${array[4]}"
    fi
done