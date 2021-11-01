#!/bin/bash
REPOSITORIES=(
  "na-ca",
  "na-es"
)

declare -A FOLDERS=(
  ["na-ca"]="na-ca"
  ["na-es"]="na-es"
) 

for REPOSITORY in ${REPOSITORIES[*]}
do
  echo ========================================================
  echo Cloning repository: $REPOSITORY
  echo ========================================================
  REPO_URL=https://github.com/NikiforovAll/$REPOSITORY.git
  git clone $REPO_URL "${FOLDERS[$REPOSITORY]}"
done
