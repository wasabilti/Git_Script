#!/bin/bash

# Script to upload code to github

PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/TeX/texbin:/Library/Apple/usr/bin

export PATH

git add .

read -p "Commit string: " COMMIT_STR

git commit -m "$COMMIT_STR"

git push origin master
