#!/bin/bash

echo "Copying backup/linuxconfig to git/linuxconfig..."

cp -r /home/yann/backup/linuxconfig/* /home/yann/git/linuxconfig/

notify-send "All relevant config files copied to git repository ~/git/linuxconfig/"
echo "All done!"
