#!/bin/bash

notify-send "Starting backup up websites in /srv/http ..."

tar --no-overwrite-dir -czf ~/backup/webdevbackup/localwebsitesbackup.tgz /srv/http/*

notify-send "Finished backing up to ~/backup/webdevbackup/localwebsitesbackup.tgz"

