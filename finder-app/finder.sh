#!/bin/sh
# Tester script for assignment 1 and assignment 2
# Author: Shoaibghurkii

filesdir=$1
searchstr=$2

# Check if filesdir is empty
if [ -z "$filesdir" ]; then
    echo "Error: Directory path (Argument 1) is not provided."
    exit 1
fi

# Check if searchstr is empty
if [ -z "$searchstr" ]; then
    echo "Error: Search string (Argument 2) is not provided."
    exit 1
fi

if [ ! -d "$filesdir" ]; then
	echo "Error: filesdir is not a vaild directory"
	exit 1
fi	


echo "The number of files are $(find "$filesdir" -type f | wc -l) and the number of matching lines are $(grep -r "$searchstr" "$filesdir" | wc -l )"

