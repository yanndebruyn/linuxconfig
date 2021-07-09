#!/bin/bash

[ -d /media/$USER/mtp ] || mkdir /media/$USER/mtp
sudo go-mtpfs -allow-other /media/$USER/mtp > /dev/null 2>&1 &
