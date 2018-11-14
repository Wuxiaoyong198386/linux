#!/bin/bash
DIR="/usr/local/myshelltest"
if [ ! -e $DIR ]
then mkdir -p $DIR
else echo "$DIR EXISTS" > msg.txt
fi
