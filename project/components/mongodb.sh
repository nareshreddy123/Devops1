#!/usr/bin/env bash

source components/common.sh

PRINT "set up a mongodb repo"

echo '[mongodb-org-4.2]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/4.2/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-4.2.asc' >/etc/yum.repos.d/mongodb.repo
STAT $? "set up mongodb"

PRINT "intsall mongodb"
yum install -y mongodb-org
STAT $? "mongodb install"



