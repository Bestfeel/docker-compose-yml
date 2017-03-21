#!/bin/bash
#  通过pid  进去 容器
if [ "${#*}" -lt 1 ];
then
  echo  "docker contain  name ;for  example  sh  a.sh   centos "
  exit 0
else
CNAME=$1
CPID=$(docker inspect  --format "{{.State.Pid}}" $CNAME)
echo $CPID
nsenter --target "$CPID"  --mount --uts --ipc --net --pid
fi



