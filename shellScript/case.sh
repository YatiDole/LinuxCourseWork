#!/bin/bash

read number

case $number in
	1 ) echo "he enter one" 
		;;
	2)echo "he enter two" 
		;;
	3)echo "he enter three" 
		;;
	*) echo "out range"
esac
