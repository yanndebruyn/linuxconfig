#!/bin/bash

cplinuxconfig_to_backup.sh
cpbackuplinuxconfig_to_gitrepo.sh

cd ~/git/linuxconfig
git add .
git commit -m "$(date)"
git push


