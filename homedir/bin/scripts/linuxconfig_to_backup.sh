#!/bin/bash

echo "Copying all relevant config files to backup dir..."

# sudo cp /etc/sudoers /home/yann/backup/linuxconfig/etc/
cp /etc/systemd/logind.conf /home/yann/backup/linuxconfig/etc/systemd/
cp /etc/xdg/dunst/dunstrc /home/yann/backup/linuxconfig/etc/xdg/dunst/

cp -r	/home/yann/.cheat /home/yann/backup/linuxconfig/homedir/
cp /home/yann/.bash_aliases /home/yann/backup/linuxconfig/homedir/
cp /home/yann/.bashrc /home/yann/backup/linuxconfig/homedir/
cp /home/yann/.compton.conf /home/yann/backup/linuxconfig/homedir/
cp /home/yann/.dircolors /home/yann/backup/linuxconfig/homedir/
cp /home/yann/.passwordmaker.rdf /home/yann/backup/linuxconfig/homedir/
cp /home/yann/.profile /home/yann/backup/linuxconfig/homedir/
cp /home/yann/.tmux.conf /home/yann/backup/linuxconfig/homedir/
cp /home/yann/.vimrc /home/yann/backup/linuxconfig/homedir/
cp /home/yann/.Xresources /home/yann/backup/linuxconfig/homedir/
cp /home/yann/.fzf/shell/key-bindings.bash /home/yann/backup/linuxconfig/homedir/.fzf/shell/
cp /usr/lib/w3m/cgi-bin/restore_tab.cgi /home/yann/backup/linuxconfig/usr/lib/w3m/cgi-bin/

cp -r /home/yann/.config/cheat /home/yann/backup/linuxconfig/homedir/.config/
cp -r /home/yann/.config/cmus /home/yann/backup/linuxconfig/homedir/.config/
cp -r /home/yann/.config/cointop /home/yann/backup/linuxconfig/homedir/.config/
cp -r /home/yann/.config/dunst /home/yann/backup/linuxconfig/homedir/.config/
cp -r /home/yann/.config/i3 /home/yann/backup/linuxconfig/homedir/.config/
cp -r /home/yann/.config/mpv /home/yann/backup/linuxconfig/homedir/.config/
cp -r /home/yann/.config/ranger /home/yann/backup/linuxconfig/homedir/.config/
cp -r /home/yann/.config/zathura /home/yann/backup/linuxconfig/homedir/.config/
cp -r /home/yann/.config/alacritty /home/yann/backup/linuxconfig/homedir/.config/
cp -r /home/yann/.config/ytfzf /home/yann/backup/linuxconfig/homedir/.config/
cp -r /home/yann/.config/surfraw /home/yann/backup/linuxconfig/homedir/.config/

cp -r /home/yann/Pictures/wallpapers/matrix-dark.png /home/yann/backup/linuxconfig/homedir/Pictures/wallpapers/
cp -r /home/yann/Pictures/wallpapers/polyscape-triangle-centered-dark.png /home/yann/backup/linuxconfig/homedir/Pictures/wallpapers/
cp -r /home/yann/Pictures/wallpapers/abstract-desert.jpg /home/yann/backup/linuxconfig/homedir/Pictures/wallpapers/

cp -r /home/yann/bin/scripts /home/yann/backup/linuxconfig/homedir/bin/
cp -r /home/yann/bin/popup /home/yann/backup/linuxconfig/homedir/bin/
cp /home/yann/bin/popup.sh /home/yann/backup/linuxconfig/homedir/bin/
cp -r /home/yann/.ssh /home/yann/backup/linuxconfig/homedir/
cp -r /home/yann/.urxvt/ext /home/yann/backup/linuxconfig/homedir/.urxvt/
cp /home/yann/.vim/autoload/plug.vim /home/yann/backup/linuxconfig/homedir/.vim/autoload/
cp -r /home/yann/.w3m /home/yann/backup/linuxconfig/homedir/
cp -r /home/yann/.password-store /home/yann/backup/

notify-send "All relevant config files copied to backup dir
~/backup/linuxconfigs/"
echo "All done!"
