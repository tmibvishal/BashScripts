#!/bin/bash

# verifying the arguments
if [ $# -ne 1 ]; then
    echo "usage: $0 file" <&2
    exit -1
fi

file=$1

# verifying if the file exits
if [ ! -f $file ]; then
    echo "$file is not a file" <&2
    exit -1
fi

value="$(cat $file)"

echo "$value"