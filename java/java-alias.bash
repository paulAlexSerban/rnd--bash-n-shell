#!/bin/bash

echo "run java8 to use Java 8 JDK"
alias java8='export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)'

echo "run java11 to use Java 11 JDK"
alias java11='export JAVA_HOME=$(/usr/libexec/java_home -v 11)'

echo "${GREEN} --< LOADED >-- ${NC} Java: java alias scripts "
