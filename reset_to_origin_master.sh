#!/bin/bash
# Reset the local repository to match a branch on origin

branch="${1:-main}"

git fetch origin

git reset --hard "origin/$branch"
# Reset the local repository to match origin/master

git fetch origin

git reset --hard origin/master

git clean -fd
