#!/bin/bash

# Assign a value to avariable
WORD='script'

# Display that value using the variable, mind the double quoets - the double quotes expand the variable
echo "$WORD using only double quotes"
echo "${WORD} using curly braches"

NOUN='dog'
ADJECTIVE='big'
VERB='ran'
ADVERB='quickly'

SENTENCE="The ${ADJECTIVE} ${NOUN} ${VERB} ${ADVERB}"

echo ${SENTENCE}