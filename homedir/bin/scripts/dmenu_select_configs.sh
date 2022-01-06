#!/bin/bash

choices="i3_config\ni3_blocks_config\nrc.conf\nrifle.conf\n.bashrc\n.bash_aliases\n.tmux.conf\n.vimrc\n.Xresources\nw3m-keys\nytfzf_config"

selected=$(echo -e "$choices" | dmenu -i -nb "#1b2235" -sb "#874f5c" -fn 'monospace:pixelsize=20' -l 41 -p 'Edit dotfile')

case "$selected" in
	i3_config) alacritty -e /bin/bash -c "stty -ixon; vim /home/yann/.config/i3/config";;
	i3_blocks_config) alacritty -e /bin/bash -c "stty -ixon; vim /home/yann/.config/i3/i3blocks.conf";;
	rc.conf)  alacritty -e /bin/bash -c "stty -ixon; vim /home/yann/.config/ranger/rc.conf";;
	rifle.conf)  alacritty -e /bin/bash -c "stty -ixon;vim /home/yann/.config/ranger/rifle.conf";;
	.bashrc) alacritty -e /bin/bash -c "stty -ixon; vim /home/yann/.bashrc";;  
	.bash_aliases) alacritty -e /bin/bash -c "stty -ixon;vim /home/yann/.bash_aliases";;  
	.tmux.conf) alacritty -e /bin/bash -c "stty -ixon; vim /home/yann/.tmux.conf";;  
	.vimrc) alacritty -e /bin/bash -c "stty -ixon; vim /home/yann/.vimrc";; 
	.Xresources) alacritty -e /bin/bash -c "stty -ixon; vim /home/yann/.Xresources";;  
	w3m-keys) alacritty -e /bin/bash -c "stty -ixon; vim /home/yann/.w3m/keymap";;
	ytfzf_config) alacritty -e /bin/bash -c "stty -ixon; vim /home/yann/.config/ytfzf/conf.sh";;
esac
