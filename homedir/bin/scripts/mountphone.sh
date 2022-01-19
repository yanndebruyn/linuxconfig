#!/bin/bash

[ -d ~/mnt/Phone ] || mkdir ~/mnt/Phone
jmtpfs ~/mnt/Phone
# sudo go-mtpfs -allow-other ~mnt/mtp > /dev/null 2>&1 &
