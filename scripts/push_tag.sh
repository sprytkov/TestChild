#!/bin/sh

git tag $FULL_BUILD_NUMBER
git push --tags
