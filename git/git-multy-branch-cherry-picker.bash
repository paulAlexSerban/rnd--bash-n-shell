#!/bin/bash

# take the latest changes
echo "---------------------------------------  "
echo "|  Pulling the latest changes from repo  |"
echo "-----------------------------------------"
git pull
echo '-------------------------------------'

COMMIT_TO_CHERRY='123qaz456wsx789edc' # commit hash

BRANCH_TYPE='bugfix'
BRANCH_NAME='ISSUE-ID---issue-title'

# final form will be `bugfix/ISSUE-ID---issue-title-ENV_ID-1`

for env in 'ENV_ID-1' 'ENV_ID-2' 'ENV_ID-3'; do
  BRANCH_TO_COMMIT="${BRANCH_TYPE}/${BRANCH_NAME}-${env}"
  echo " "
  echo "-----------------------------------------------------------------------------------------  "
  echo " ${BLUE} ------< CHEKCING OUT BRANCH => ${BRANCH_TO_COMMIT} >------ ${NC}"
  echo "-----------------------------------------------------------------------------------------  "
  echo " "
  git checkout "${BRANCH_TO_COMMIT}"
  echo " "
  echo "-----------------------------------------------------------------------------------------  "
  echo " ${BLUE}------< Cherry-picking commit => ${COMMIT_TO_CHERRY_PICK}"
  echo "-----------------------------------------------------------------------------------------  "
  echo " "
  git cherry-pick "${COMMIT_TO_CHERRY}"
  echo " "
  echo "-----------------------------------------------------------------------------------------  "
  echo " ${BLUE}------< Pushing to remote repo => origin/${BRANCH_TO_COMMIT}>------ ${NC}"
  echo "-----------------------------------------------------------------------------------------  "
  echo " "
  git push
  echo " "
  echo "-----------------------------------------------------------------------------------------  "
  echo " ${BLUE}------< DONE - READY to open Pull Request for => ${BRANCH_TO_COMMIT} >------ ${NC};"
  echo " "
  echo " "
done

echo "${GREEN} --< LOADED >-- ${NC} Git: Multi branch picker"
