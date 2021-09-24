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

for env in 'ENV_ID-1' 'ENV_ID-2' 'ENV_ID-3'
do
  BRANCH_TO_COMMIT="${BRANCH_TYPE}/${BRANCH_NAME}-${env}";
  echo " "
  echo "-----------------------------------------------------------------------------------------  ";
  echo " ======> CHEKCING OUT BRANCH ====> ${BRANCH_TO_COMMIT}";
  echo "-----------------------------------------------------------------------------------------  ";
  echo " "
  git checkout "${BRANCH_TO_COMMIT}";
  echo " "
  echo "-----------------------------------------------------------------------------------------  ";
  echo "======> Cherry-picking commit";
  echo "-----------------------------------------------------------------------------------------  ";
  echo " "
  git cherry-pick "${COMMIT_TO_CHERRY}";
  echo " "
  echo "-----------------------------------------------------------------------------------------  ";
  echo "======> Pushing to remote repo";
  echo "-----------------------------------------------------------------------------------------  ";
  echo " "
  git push;
  echo " "
  echo "-----------------------------------------------------------------------------------------  ";
  echo "======> DONE - READY to open Pull Request for ======> ${BRANCH_TO_COMMIT}";
  echo " "
  echo " "
done