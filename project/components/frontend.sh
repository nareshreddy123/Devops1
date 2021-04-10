#!/usr/bin/env bash

USER_ID=${id -u}

if [ "${USER_ID}" -ne 0 ]; then

  echo you should be root user

  exit
fi

yum install nginx -y