#!/bin/bash

rsync -azvP --delete ~/backup/linuxconfig dreamhost:~/backup/
notify-send "linuxconfig uploaded to dreamhost server"


