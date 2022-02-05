#!/bin/bash

cpteachings_to_backup.sh
rsync -azvP --delete ~/backup/Teachings dreamhost:~/backup/
notify-send "Teachings uploaded to dreamhost server"
