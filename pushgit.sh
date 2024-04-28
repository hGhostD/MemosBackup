#!/bin/bash

cd /root/.memos/MemosBackup/*

git rm -r --cached -f .

git init && git add -A

git commit -m "自动备份: `date`"

sudo git remote rm origin

sudo git remote -v

sudo git remote add origin git@github.com:hGhostD/MemosBackup.git
sudo git push origin master:master -f