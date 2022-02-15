#!/bin/bash

for IP in $(cat webnodeIP.txt)
do 
  echo "Executing Command on $IP"
  ssh devops@${IP} '
    echo "Executing free -m"
    free -m
    echo "Executing uptime."
    uptime
    '
done
