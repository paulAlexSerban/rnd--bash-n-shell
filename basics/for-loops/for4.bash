#!/bin/bash


# makes sure the folder containing the script will be the root folder
cd "$(dirname "$0")" || exit

# for IP in $(cat webnodeIP.txt)
grep -v '^ *#' < list.txt | while IFS= read -r ITEM
do 
  echo "$ITEM"
done
