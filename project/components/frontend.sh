#!/bin/bash
source components/common.sh


PRINT "INTSALL NGINX"
yum install nginx -y
STAT $? " NGINX INSTALLATION "
