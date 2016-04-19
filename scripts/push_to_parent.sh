#!/bin/bash -x

mkdir ./depend
cd ./depend

git clone https://github.com/sprytkov/TestParent.git

mkdir ./versions

repo_name = `$TRIGGER_REPO | sed 's|[^/]*/||'`

rm -f $repo_name
echo $TRAVIS_COMMIT >> $repo_name

git add .
git status
git commit -m "update version of $repo_name"
git push -f 