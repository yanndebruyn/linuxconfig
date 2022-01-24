#!/bin/bash

cppasswordstore_to_backup.sh
rsync -azvP --delete ~/backup/.password-store dreamhost:~/backup/
rsync -azvP --delete ~/backup/.gnupg dreamhost:~/backup/
notify-send ".password-store and .gnupg uploaded to dreamhost server"
