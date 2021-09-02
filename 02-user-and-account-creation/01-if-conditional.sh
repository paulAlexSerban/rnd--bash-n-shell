#!/bin/bash

# 1. Display the UID and the username of the user executing te script
# 2. Display if the suer is the root user or not
# Run `$ bash 02-if-conditional.sh` in your terminal

# Display the UID
echo "Your UID is ${UID}"

# Only display if the UID does NOT match 1000
UID_TO_TEST_FOR='1000'
if [[ "${UID}" -ne "${UID_TO_TEST_FOR}" ]]
then
  echo "Your UID does NOT match ${UID_TO_TEST_FOR}."
  exit 1 # 0 is for SUCCESS, anything else is for FAIL
fi

# Get the username
USER_NAME=$(id -un) # USER_NAME=`id -un` is the old syntax

# Test if the command succeeded
  # ${?} - bash variable that holds the exit status of the most recent executed command
if [[ "${?}" -ne 0 ]]
then
  echo 'The id command dod not execute sccessfully'
  exit 1
fi
# Display the username
echo "Your username is ${USER_NAME}"

# Use a strig test conditional
USER_NAME_TO_TEST_FOR='toor'
if [[ "${USER_NAME}" = "${USER_NAME_TO_TEST_FOR}" ]] # == (double equal) is used for pattern and pattern-matching
then
 echo "Your username matches ${USER_NAME_TO_TEST_FOR}"
fi

# Display if the user is the root user or not
if [[ "${UID}" -eq 0 ]] # single brakets is the old syntax
then
  echo 'You are root user.'
else
  echo 'You are NOT root user!'
fi

# Test for != (not equal) for the string
if [[ "${USER_NAME}" != "${USER_NAME_TO_TEST_FOR}" ]]
then
 echo "Your username doe not match ${USER_NAME_TO_TEST_FOR}"
 exit 1
fi

exit 0 # if not specified, the exit code of the most recently executed command will be left asigned to the ${?} variable