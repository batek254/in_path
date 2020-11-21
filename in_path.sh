#!/bin/bash
#script that verifies if given program is in PATH directory list

cmd=$1
ourpath=$2
result=1
oldIFS=$IFS
IFS=":"

for directory in "$ourpath"
do
    echo $directory
    echo $ourpath
    if [ -x $directory/$cmd ] ; then #-x FILE exists and the execute permission is granted.
        result=0
    fi
done

IFS=$oldIFS
echo $result