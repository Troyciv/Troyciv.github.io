#!/usr/bin/env bash

git add --all && \
git add -u && \
git status && \
read -p 'Enter the commit message:' commitMessage
git commit -m "$commitMessage"
git push origin sources
# read

# git -C _site/ add --all
# git -C _site/ status
# git -C _site/ commit
# git -C _site/ push origin master
