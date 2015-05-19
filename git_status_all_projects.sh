#!/bin/bash
# Loops git projects subdirectories and posts "git status" of each of them.

for d in */ ; do
	echo
	echo "project "$d
	cd $d
	git status
	cd ..
    #echo "$d"
done