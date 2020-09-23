#!/bin/bash

#while [[ -n "$name" ]]; do
#	echo "enter name:"
#	read name
#	echo "name: $name"
#done


while read line
do
echo $line

done < profile.txt

# last line
echo $line