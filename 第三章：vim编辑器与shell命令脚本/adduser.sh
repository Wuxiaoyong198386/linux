#!/bin/bash
read -p "Enter the users password:" PASSWD
for uname in `cat users.txt`
do
  id $uname &> /dev/null
  if [ $? -eq 0 ]
    then echo "already exists"
  else
    useradd $uname &> /dev/null
    echo "$PASSWD" | passwd --stdin $uname &> /dev/null
    if [ $? -eq 0 ]
        then echo "$uname,create success"
    else
        echo "$uname,create failure"
    fi
  fi
done
