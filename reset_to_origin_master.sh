#!/bin/bash
# Reset the local repository to match a branch on origin

branch="${1:-main}"

git fetch origin

git reset --hard "origin/$branch"

git clean -fd
