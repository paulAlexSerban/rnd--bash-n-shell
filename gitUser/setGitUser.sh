#!/bin/bash

USER_NAME='User Name'
EMAIL='username.company@email.com'

echo '================================================================'
echo "Changing Git credentials to:"
echo "${USER_NAME}"
echo "${EMAIL}"
git config --global user.name "${USER_NAME}"
git config --global user.email "${EMAIL}"
echo '================================================================'