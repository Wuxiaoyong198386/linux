#!/bin/bash
#HLIST=$(cat ipadds.txt)
#for IP in $HLIST

for IP in `cat ipadds.txt`
do
	ping -c 3 -i 0.2 -W 3 $IP &> /dev/null
	if [ $? -eq 0 ]
	then	echo "$IP IS On-line"
	else
		echo "$IP IS Of-line"
	fi

done
