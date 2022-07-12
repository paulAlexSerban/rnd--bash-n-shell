#!/bin/bash

# This script generates a list of random passwords

# NOTE
# ${RANDOM} if a built in random number variable

# A random number as a password
PASSWORD="${RANDOM}"
echo "${PASSWORD}"
echo '----------------------------------------'

# Three random numbers together
PASSWORD="${RANDOM}${RANDOM}${RANDOM}"
echo "${PASSWORD}"
echo '----------------------------------------'

# Use the current date/time as the bias for the password
# $(command) - the round parenthesies take the output of the command and assigns it to the variable
PASSWORD=$(date +%s)
echo "${PASSWORD}"
echo '----------------------------------------'

# Use nanoseconds to act as randomization
PASSWORD=$(date +%s%N)
echo "${PASSWORD}"
echo '----------------------------------------'

# Generate a better password using `date +%s%N`, `sha256sum`, and `head`
PASSWORD=$(date +%s%N | sha256sum | head -c32)
echo "${PASSWORD}"
echo '----------------------------------------'

# Generate an even better passowrd extendiong the previous implementation with `RADNOM` built in variable
PASSWORD=$(date +%s%N${RANDOM}${RANDOM} | sha256sum | head -c48 | sha256sum | head -c12)
echo "${PASSWORD}"
echo '----------------------------------------'

# Assign special charactes to a variable
SPECIAL_CHARS='!@#$%^&*()~`{}[]:"|;\<>?/*-+'
echo "${SPECIAL_CHARS}"
echo '----------------------------------------'

# Break a list of characters into single lines with `fold`, 
# Then shuffle with `shuf`
# Then get the first character with `head`
echo "${SPECIAL_CHARS}" | fold -w1 | shuf | head -c1
echo '----------------------------------------'

# Append a special character ro the password
SPECIAL_CHAR=$(echo $SPECIAL_CHARS | fold -w1 | shuf | head -c1)
echo "${PASSWORD}${SPECIAL_CHAR}"
echo '----------------------------------------'

