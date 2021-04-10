#!/bin/bash

echo -e "\e[1;35m [info] intsalling nginx\e[om"

yum install nginx -y
if [ $? -ne 0 ]; then

echo -e "\e[1;31m failure of nginx\e[om"

else
echo -e "\e[1;32m success of nginx\e[om"
exit 2

fi
