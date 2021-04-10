#!/usr/bin/env bash


LID=lt-0755896d1c4556f94
COMPONENT=$1
LVER=2

if [ -z "${COMPONENT}" ]; then

  echo "COMPONENT name is needed"

fi

aws ec2 run-instances --launch-template LaunchTemplateId=${LID},Version=${LVER} --tag-specifications "ResourceType=instance,Tags=[{Key=NAME,Value=${COMPONENT}
}]" | jq