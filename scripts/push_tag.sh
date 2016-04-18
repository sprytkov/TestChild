#!/bin/sh

echo "push tag: $FULL_BUILD_NUMBER"

git tag $FULL_BUILD_NUMBER
git push --tags
