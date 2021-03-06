#!/bin/bash -x

mkdir ./depend
cd ./depend

git clone https://github.com/sprytkov/TestParent.git

cd ./TestParent
mkdir ./versions
cd ./versions

repo_name=`echo $TRAVIS_REPO_SLUG | sed 's|[^/]*/||'`

rm -f $repo_name
echo $TRAVIS_COMMIT >> $repo_name

git add .
git status
git commit -m "update version of $repo_name"
git push -f 