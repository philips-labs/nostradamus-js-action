#!/bin/bash

cd ${INPUT_SOURCEPATH:-.} 

rm yarn.lock
yarn

if [[ $(git diff --stat) != '' ]]; then
  echo 'Newer versions of the packages are available'
  echo "::set-output name=newDependencies::true"
else
  echo 'No newer versions available'
  echo "::set-output name=newDependencies::false"
fi

