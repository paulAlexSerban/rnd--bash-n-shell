#!/bin/bash
#
# This script creates a new user on the local system
#
# You will be prompted to enter the username (login), the person, and a password
# The username password, and ost for the accont will be displayed.

# Make sure the script is executed with superuser privileges/permissions.
if [[ "${UUID}" -ne 0 ]]
then
  echo 'Please run with sudo or as root.'
  exit 1
fi

# Get the username (login)
read -p 'Enter the username to create: ' USER_NAME

# Get the real name (contents for he description field).
read -p 'Enter the name of the person or application that wil be using this acount: ' COMMENT

# Get the password
echo '####################'
echo 'The password needs to have a minimum 8 characters, should not contain the name of the user in any form, should a special character and also a number'
echo '####################'
read -p 'Enter the password to se fo the account: ' PASSWORD
echo

# Create the account
useradd -c "${COMMENT}" -m ${USER_NAME}

# Check to see if the userad command succeeded
# We DO NOT WANT to tell the user hat an account was created when it has not been
if [[ "${?}" -ne 0 ]]
then
  echo 'The account could not be created.'
  exit 1
fi

# Set he password
echo "${USER_NAME}:${PASSWORD}" | chpasswd

if [[ ${?} -ne 0 ]]
then
  echo 'The passowrd for the acount could be not set.'
  exit 1
fi

# Force password change on first login
passwd -e ${USER_NAME}

# Display the username, password, and the host where the user was created.
echo
echo 'username:'
echo "${USER_NAME}"
echo
echo 'password:'
echo "${PASSWORD}"
echo
echo 'host:'
echo "${HOSTNAME}"
exit 0

#
# The first time you execute the scrpt you have o make sure you have executable permissions on it
# RUN in terminal: chmod 755 03-add-local-user.sh