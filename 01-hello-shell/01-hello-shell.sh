#!/bin/bash

# This script displays various information to the screen
# Run `$ bash 01-hello-shell.sh` in your terminal

# Display 'Hello'
echo 'Hello'

# Assign a value to avariable
WORD='script'

# Display that value using the variable, mind the double quoets - the double quotes expand the variable
echo "$WORD"

# Demonstrate that single quotes does not expose the value of the variable
echo '$WORD'

# Combine the variable with hard-coded text
echo "This is a shell $WORD"

# Display the content of the variable using an alternative syntax
echo "This is a shell ${WORD}"

# Append text to the variable
echo "${WORD}ing is fun"

# Cerate a new variable
ENDING='ed'

# Combine two variabls
echo "This is ${WORD}${ENDING}"

# Change the value stored in the ENDING variable. (Reasignment)
ENDING='ing'

echo "${WORD}${ENDING} if fun"

ENDING='s'

echo "You are going to write many ${WORD}${ENDING}"