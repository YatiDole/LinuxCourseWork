#!/bin/bash
# $0 mean caller ($1 ..  varibles), $$ process id, $@, $?, $#
printMe(){

    echo "number of var $#"
	echo "All params: $@"
	echo "Welcome $1"
	echo "age $2"
	echo "job: $3"
}

echo "Process ID $$"
#echo hello> job$$
printMe hussein 29 "Software Enginer"

 ls ~/Desktop

if [ "$?" = "0" ]
 then
	echo "there is file"
else
	echo "there is nothing"
fi

