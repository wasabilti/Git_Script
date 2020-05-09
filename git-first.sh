#!/bin/bash

# Use to init git at first install

# PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin::/Library/Apple/usr/bin:~/bin

export PATH

read -p "Username: " USERNAME
read -p "Email: " EMAIL

git config --global user.name "$USERNAME"
git config --global user.email "$EMAIL"


ssh-keygen -t rsa -C "EMAIL"

eval $(ssh-agent -s)

read -p "Private key file name(Incoude path): " KEYNAME

ssh-add $KEYNAME

echo 'Copy the pub key to github.com'

read tmp_wait

ssh -T git@github.com
