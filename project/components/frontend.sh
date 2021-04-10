#!/bin/bash
 yum install nginx  -y

if [ $? -ne 0 ]; then
echo -e "\e[31m failure of nginx\e[om"
exit 2
  fi
