#!/bin/bash

# for IP in $(cat webnodeIP.txt)
grep -v '^ *#' < webnodeIP.txt | while IFS= read -r IP
do 
  echo "Executing Command on $IP"
  ssh -n devops@"${IP}" '
    echo "Executing free -m"
    free -m
    echo "Executing uptime."
    uptime
    '
done
