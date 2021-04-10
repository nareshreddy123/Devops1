#!/bin/bash

USER_ID=$(id -u)
if [ "${USER_ID}" -ne 0 ]; then
  echo -e "\e[1;31mYou should be a root user to perform this command\e[0m"
  exit 1
fi
PRINT(){

echo "........................................................................"
echo -e "\e[1;35m [info] intsalling nginx\e[om"
echo "........................................................................."
}

STAT(){
yum install nginx -y
if [ $1 -ne 0 ]; then
echo "........................................................................."
echo -e "\e[1;31m failure of nginx\e[om"
exit 2
else
echo "........................................................................."
echo -e "\e[1;32m success of nginx\e[om"
fi
}
