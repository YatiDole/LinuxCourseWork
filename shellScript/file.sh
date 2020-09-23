#!/bin/bash

echo "hello, Hussein" > welcome.txt
echo "Where you live?" >> welcome.txt

echo "read file use cat"
cat welcome.txt

echo "read file line by line"

while read line 
 do
	echo $line
done < welcome.txt

echo "write muti line to file"
cat <<EOF > users.txt
hussein
jena
laya
EOF









