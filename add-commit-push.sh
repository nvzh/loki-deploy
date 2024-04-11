#!/usr/bin/env bash
##############################################
### Usage:                                 ###
### ./add-commit-push.sh "bla bla bla" .   ###
##############################################

comment="$1"
path="$2"

echo "--- Adding modified and/ or new files in $path"
git add "$path"; echo

echo "--- Commiting changes"
git commit -am "\"$comment\""; echo

echo "--- Pushing current branch to the origin" 
git push -u origin "$(git rev-parse --abbrev-ref HEAD)" 
