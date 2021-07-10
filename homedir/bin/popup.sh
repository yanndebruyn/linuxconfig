#!/bin/bash

/bin/bash -c /home/yann/bin/popup/`cat /home/yann/bin/popup/_popuplist | sort |\
	 fzf --exact | awk '{print $1}'`

