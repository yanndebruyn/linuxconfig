#!/bin/bash

echo "Copying all relevant config files to backup dir..."

# sudo cp /etc/sudoers /home/yann/backup/linuxconfig/etc/

cp -r	/home/yann/.calcurse /home/yann/backup/linuxconfig/homedir/
rsync -az --delete /home/yann/.cheat /home/yann/backup/linuxconfig/homedir/
cp /home/yann/.fzf/shell/key-bindings.bash /home/yann/backup/linuxconfig/homedir/.fzf/shell/
cp /home/yann/.mpd/mpd.conf /home/yann/backup/linuxconfig/homedir/.mpd/
cp -r /home/yann/.ncmpcpp /home/yann/backup/linuxconfig/homedir/
cp -r /home/yann/.ssh /home/yann/backup/linuxconfig/homedir/
cp -r /home/yann/.w3m /home/yann/backup/linuxconfig/homedir/

cp /home/yann/.bash_aliases /home/yann/backup/linuxconfig/homedir/
cp /home/yann/.bashrc /home/yann/backup/linuxconfig/homedir/
cp /home/yann/.dircolors /home/yann/backup/linuxconfig/homedir/
cp /home/yann/.mailcap /home/yann/backup/linuxconfig/homedir/
cp /home/yann/.mbsyncrc /home/yann/backup/linuxconfig/homedir/
cp /home/yann/.notmuch-config /home/yann/backup/linuxconfig/homedir/
cp /home/yann/.profile /home/yann/backup/linuxconfig/homedir/
cp /home/yann/.tmux.conf /home/yann/backup/linuxconfig/homedir/
cp /home/yann/.Xresources /home/yann/backup/linuxconfig/homedir/

cp -r /home/yann/.config/alacritty /home/yann/backup/linuxconfig/homedir/.config/
cp -r /home/yann/.config/calcurse /home/yann/backup/linuxconfig/homedir/.config/
# cp -r /home/yann/.config/cointop /home/yann/backup/linuxconfig/homedir/.config/
cp -r /home/yann/.config/dunst /home/yann/backup/linuxconfig/homedir/.config/
cp -r /home/yann/.config/i3 /home/yann/backup/linuxconfig/homedir/.config/
cp -r /home/yann/.config/mpv /home/yann/backup/linuxconfig/homedir/.config/
cp -r /home/yann/.config/mutt /home/yann/backup/linuxconfig/homedir/.config/
cp -r /home/yann/.config/ncmpcpp /home/yann/backup/linuxconfig/homedir/.config/
cp -r /home/yann/.config/nvim/autoload /home/yann/backup/linuxconfig/homedir/.config/nvim/
cp -r /home/yann/.config/nvim/spell /home/yann/backup/linuxconfig/homedir/.config/nvim/
cp /home/yann/.config/nvim/plugged/lightline.vim/autoload/lightline/colorscheme/powerline.vim /home/yann/backup/linuxconfig/homedir/.config/nvim/plugged/lightline.vim/autoload/lightline/colorscheme/
cp /home/yann/.config/nvim/init.vim /home/yann/backup/linuxconfig/homedir/.config/nvim/
cp -r /home/yann/.config/picom /home/yann/backup/linuxconfig/homedir/.config/
cp -r /home/yann/.config/polybar /home/yann/backup/linuxconfig/homedir/.config/
cp -r /home/yann/.config/ranger /home/yann/backup/linuxconfig/homedir/.config/
cp -r /home/yann/.config/ytfzf /home/yann/backup/linuxconfig/homedir/.config/
cp -r /home/yann/.config/zathura /home/yann/backup/linuxconfig/homedir/.config/

cp -r /home/yann/Pictures/me /home/yann/backup/linuxconfig/homedir/Pictures/
cp /home/yann/Pictures/wallpapers/matrix-dark.png /home/yann/backup/linuxconfig/homedir/Pictures/wallpapers/
cp /home/yann/Pictures/wallpapers/polyscape-triangle-centered-dark.png /home/yann/backup/linuxconfig/homedir/Pictures/wallpapers/
cp /home/yann/Pictures/wallpapers/abstract-desert.jpg /home/yann/backup/linuxconfig/homedir/Pictures/wallpapers/

rsync -az --delete /home/yann/bin/scripts /home/yann/backup/linuxconfig/homedir/bin/
rsync -az --delete /home/yann/bin/popup /home/yann/backup/linuxconfig/homedir/bin/
cp /home/yann/bin/popup.sh /home/yann/backup/linuxconfig/homedir/bin/

cp /usr/lib/node_modules/alacritty-themes/themes/polyscape.yml /home/yann/backup/linuxconfig/usr/lib/node_modules/alacritty-themes/themes/
cp /usr/lib/node_modules/alacritty-themes/themes/abstract-desert.yml /home/yann/backup/linuxconfig/usr/lib/node_modules/alacritty-themes/themes/
cp /usr/lib/node_modules/alacritty-themes/themes/redarch.yml /home/yann/backup/linuxconfig/usr/lib/node_modules/alacritty-themes/themes/


notify-send "All relevant config files copied to backup dir
~/backup/linuxconfigs/"
echo "All done!"
