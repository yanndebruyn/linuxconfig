#!/bin/bash

[ `mount | grep mtp | wc -l` == 0 ] || fusermount -u ~/mnt/Phone
