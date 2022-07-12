#!/bin/bash

function get-git-config () {
  echo "${GREEN}----------< Unsing >----------${NC}"
  git config user.name
  git config user.email
}

function set-git-user () {
  USER_NAME="githubUserName"
  EMAIL='email.used.on.github@gmail.com'

  echo "${GREEN}----------< Changing Git credentials >----------${NC}"
  echo "${USER_NAME}"
  echo "${EMAIL}"
  git config --global user.name "${USER_NAME}"
  git config --global user.email "${EMAIL}"
  echo "${GREEN}----------< Changed Git credentials >----------${NC}"
  getGitConfig
}

echo "${GREEN} --< LOADED >-- ${NC} Git: Set user scripts"
