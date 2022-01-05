#!/bin/bash

cppasswordstore_to_backup.sh
rsync -azvP --delete ~/backup/.password-store dreamhost:~/backup/
rsync -azvP --delete ~/backup/.gnupg dreamhost:~/backup/
