#!/bin/bash

source components/common.sh
COMPONENT=mongodb

PRINT "Setup MongoDB Repository"
echo '[mongodb-org-4.2]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/4.2/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-4.2.asc' >/etc/yum.repos.d/mongodb.repo
STAT $? "Setup MongoDB repository"

PRINT "Install MongoDB"
yum install -y mongodb-org
STAT $? "Installation of MongoDB"

PRINT "Update MonngoDB Configuraiton File"
sed -i -e 's/127.0.0.1/0.0.0.0/' /etc/mongod.conf
STAT $? "Updating MongoDB configuration file"

PRINT "Start MongoDB Service"
systemctl enable mongod
systemctl restart mongod
STAT $? "Starting MongoDB"

PRINT "Download MongoDB Schema"
curl -s -L -o /tmp/mongodb.zip "https://github.com/roboshop-devops-project/mongodb/archive/main.zip"
STAT $? "Downloading Schema"

PRINT "Extract MongoDB Schemas"
cd /tmp
unzip -o mongodb.zip
STAT $? "Extracting MongoDB schemas"

PRINT "Load Schema"
cd mongodb-main
mongo < catalogue.js && mongo < users.js
STAT $? "Loading Schema"
