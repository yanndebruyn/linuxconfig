#!/bin/bash

cp -r /home/yann/.password-store /home/yann/backup/
cp -r /home/yann/.gnupg /home/yann/backup/

notify-send ".password-store and .gnupg copied to ~/backup/"
echo ".password-store and .gnupg copied to ~/backup/"
