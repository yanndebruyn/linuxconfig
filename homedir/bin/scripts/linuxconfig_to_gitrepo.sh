#!/bin/bash

echo "Copying all relevant config files to git dir..."

# sudo cp /etc/sudoers /home/yann/git/linuxconfig/etc/
cp /etc/systemd/logind.conf /home/yann/git/linuxconfig/etc/systemd/
cp /etc/xdg/dunst/dunstrc /home/yann/git/linuxconfig/etc/xdg/dunst/

cp -r	/home/yann/.cheat /home/yann/git/linuxconfig/homedir/
cp /home/yann/.bash_aliases /home/yann/git/linuxconfig/homedir/
cp /home/yann/.bashrc /home/yann/git/linuxconfig/homedir/
cp /home/yann/.compton.conf /home/yann/git/linuxconfig/homedir/
cp /home/yann/.dircolors /home/yann/git/linuxconfig/homedir/
cp /home/yann/.passwordmaker.rdf /home/yann/git/linuxconfig/homedir/
cp /home/yann/.profile /home/yann/git/linuxconfig/homedir/
cp /home/yann/.tmux.conf /home/yann/git/linuxconfig/homedir/
cp /home/yann/.vimrc /home/yann/git/linuxconfig/homedir/
cp /home/yann/.Xresources /home/yann/git/linuxconfig/homedir/
cp /usr/lib/w3m/cgi-bin/restore_tab.cgi /home/yann/backup/linuxconfig/usr/lib/w3m/cgi-bin

cp -r /home/yann/.config/cheat /home/yann/git/linuxconfig/homedir/.config/
cp -r /home/yann/.config/cmus /home/yann/git/linuxconfig/homedir/.config/
cp -r /home/yann/.config/cointop /home/yann/git/linuxconfig/homedir/.config/
cp -r /home/yann/.config/dunst /home/yann/git/linuxconfig/homedir/.config/
cp -r /home/yann/.config/i3 /home/yann/git/linuxconfig/homedir/.config/
cp -r /home/yann/.config/mpv /home/yann/git/linuxconfig/homedir/.config/
cp -r /home/yann/.config/ranger /home/yann/git/linuxconfig/homedir/.config/
cp -r /home/yann/.config/zathura /home/yann/git/linuxconfig/homedir/.config/
cp -r /home/yann/.config/alacritty /home/yann/git/linuxconfig/homedir/.config/
cp -r /home/yann/.config/ytfzf /home/yann/git/linuxconfig/homedir/.config/
cp -r /home/yann/.config/surfraw /home/yann/git/linuxconfig/homedir/.config/

cp -r /home/yann/Pictures/wallpapers/matrix-dark.png /home/yann/git/linuxconfig/homedir/Pictures/wallpapers/
cp -r /home/yann/Pictures/wallpapers/polyscape-triangle-centered-dark.png /home/yann/git/linuxconfig/homedir/Pictures/wallpapers/
cp -r /home/yann/Pictures/wallpapers/abstract-desert.jpg /home/yann/git/linuxconfig/homedir/Pictures/wallpapers/

cp -r /home/yann/bin/scripts /home/yann/git/linuxconfig/homedir/bin/
cp -r /home/yann/bin/popup /home/yann/git/linuxconfig/homedir/bin/
cp -r /home/yann/.ssh /home/yann/git/linuxconfig/homedir/
cp -r /home/yann/.urxvt/ext /home/yann/git/linuxconfig/homedir/.urxvt/
cp /home/yann/.vim/autoload/plug.vim /home/yann/git/linuxconfig/homedir/.vim/autoload/
cp -r /home/yann/.w3m /home/yann/git/linuxconfig/homedir/

notify-send "All relevant config files copied to git repository ~/git/linuxconfig/"
echo "All done!"
