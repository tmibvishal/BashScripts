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

# verifying the file format
if [[ ! "$file" = *.txt ]]; then
    echo "$file is not a text file" <&2
    exit -1
fi

{ cat $file; echo ''; } | while read line; do
    IFS=':' read -r -a array <<< "$line"
    if [ "${array[0]}" = "$username" ]; then
        echo "${array[4]}"
        break
    fi
done

exit 0