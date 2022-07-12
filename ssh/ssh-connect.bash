#!/bin/bash
USER=htb-student
PASS=passowrd
IP=10.129.185.114

sudo sshpass -p ${PASS} ssh \
    -o StrictHostKeyChecking=no \
    ${USER}@${IP}
