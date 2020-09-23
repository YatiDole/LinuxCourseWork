#!/bin/bash
echo "====== Start reading Files ======"
path=$(pwd)
echo "root path: $path"
while read gitLink
do  

	echo "Start clonig project $gitLink"
	arr=(` echo $gitLink | tr '/' ' ' ` )
	appPath="${path}/${arr[3]}"
	echo $appPath
	git clone $gitLink
	cd $appPath
	git log > ../${arr[3]}_log.txt
	rm -rf $appPath
	
	cd $path
# read authors
while read line
 do
 if [[ $line = "Author: "* ]]; then
 
 if [[ $(grep "$line"  "developersEmails.txt") ]]; then
 	echo " Already saved will nto saved again"
 else
 	  echo "write developer info to file"
 	  echo $line >> developersEmails.txt
 fi

	 
 	
 fi

done < ${arr[3]}_log.txt


done < links.txt
