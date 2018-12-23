#!/bin/bash 

# cheching the argument
if [ $# -ne 1 ]; then
    echo "usage: $0 file" <&2
    exit -1
fi

file=$1

# cheching if the argument is a file
if [ ! -f $file ]; then
    echo "$file is not a file" <&2
    exit -1
fi

sum=0
{ cat $file; echo ''; } | (while read line; do
    IFS=" " read -r -a array <<< "$line"
    sum=$(($sum ${array[1]} ${array[0]}))
done
echo $sum)

exit 0