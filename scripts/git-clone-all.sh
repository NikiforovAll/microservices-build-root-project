#!/bin/bash
REPOSITORIES=(
)

declare -A FOLDERS=(
  # [""]=""
) 

for REPOSITORY in ${REPOSITORIES[*]}
do
  echo ========================================================
  echo Cloning repository: $REPOSITORY
  echo ========================================================
  REPO_URL=https://github.com/NikiforovAll/$REPOSITORY.git
  git clone $REPO_URL "${FOLDERS[$REPOSITORY]}"
done
