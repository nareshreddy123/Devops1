#!/bin/bash
source common.sh


PRINT "INTSALL NGINX"
yum install nginx -y
STAT $? " NGINX INSTALLATION "
