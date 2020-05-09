#!/bin/bash

# Script to create a new repositories

# PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin::/Library/Apple/usr/bin:~/bin

read -p "Repository name: " REPO_NAME
# read -p "Discription: " DISCRIP_STR

echo ''# $REPO_NAME >> README.md
git init
git add README.md
git commit -m "initial repo"
git remote add origin https://github.com/wasabilti/$REPO_NAME.git
git push -u origin master
