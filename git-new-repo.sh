#!/bin/bash

# Script to create a new repositories

# PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin::/Library/Apple/usr/bin:~/bin

read -p "Repository name: " REPO_NAME
# read -p "Discription: " DISCRIP_STR
read -p "Your account name: " ACCOUNT_NAME

echo ''# $REPO_NAME >> README.md
git init
git add README.md
git commit -m "initial repo"
# Using ssh
git remote add origin git@github.com:$ACCOUNT_NAME/$REPO_NAME.git
git push -u origin master
