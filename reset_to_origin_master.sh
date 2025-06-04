#!/bin/bash
# Reset the local repository to match origin/master

git fetch origin

git reset --hard origin/master

git clean -fd
