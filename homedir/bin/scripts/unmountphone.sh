#!/bin/bash

[ `mount | grep mtp | wc -l` == 0 ] || sudo umount /media/$USER/mtp
