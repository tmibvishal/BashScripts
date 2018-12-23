#!/bin/bash

# Output the number of files
# in the given directory that
# have the given file extension

if [ $# -ne 2 ]; then
    echo "usage: $0 directory extension" >&2;
    exit 1
fi

directory=$1;
extension=$2;

if [ ! -d $directory ]; then
    echo "$directory is not a directory" >&2
    exit 1
fi

echo "$(find $directory -name *$extension | wc -l)"