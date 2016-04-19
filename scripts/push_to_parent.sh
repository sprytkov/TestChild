#!/bin/bash -x

mkdir ./depend
cd ./depend

git clone https://github.com/sprytkov/TestParent.git

mkdir ./versions

rm -f $TRAVIS_REPO_SLUG
echo $TRAVIS_COMMIT >> $TRAVIS_REPO_SLUG

git add .
git status
git commit -m "update vesion $TRAVIS_REPO_SLUG"
git push 