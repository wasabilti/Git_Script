#!/bin/bash

# Script to create a new repository
# You need to add a new reporitory on website first


read -p "Your remote repository name: " REMOTE_REPO
read -p "Your repository discription: " DISCRIP_STR
read -p "Your account name: " ACCOUNT_NAME

echo '#'$README >> README.md
echo $DISCRIP_STR >> README.md

git init
# git add README.md
git add .
git commit -m "initial repo"
git remote add origin https://github.com/$ACCOUNT_NAME/$REMOTE_REPO.git
git push -u origin master
