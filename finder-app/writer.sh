#!/bin/sh
# Tester script for assignment 1 and assignment 2
# Author: Shoaibghurkii

if [ $# -lt 2 ]; then
    echo "$0 rewuired two arguments"
    exit 1
fi

writefile=$1 # fulle path to a file including name
writestr=$2 # text string

mkdir -p  $(dirname "$writefile")
if [ $? -ne 0 ]; then
    echo "Could not create directory"
    exit 1
fi

echo "$writestr" > "$writefile"
if [ $? -ne 0 ]; then
    echo "Could not write to file '$writefile'"
    exit 1
fi

exit 0

