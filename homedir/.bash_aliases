
# All bash aliases

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Custom aliases
alias ll='ls -lhF --group-directories'
alias la='ls -lhaF --group-directories'
alias l='ls -CFh --group-directories'
alias l.='ls -d .* --group-directories'
#alias feh='feh --image-bg black'
alias gh='cd /home/yann'
alias gD='cd /home/yann/Documents'
alias gd='cd /home/yann/Downloads'
alias gk='cd /home/yann/Desktop'
alias gp='cd /home/yann/Pictures'
alias gw='cd /home/yann/Pictures/wallpapers'
alias gW='cd /home/yann/Websites'
alias gWW='cd /var/www'
alias gS='cd /home/yann/Pictures/screenshots'
alias gv='cd /home/yann/Videos'
alias gs='cd /home/yann/bin/scripts'
alias gP='cd /home/yann/mnt'
alias gG='cd /home/yann/git'
alias gt='cd /home/yann/Teachings'
alias gm='cd /home/yann/Music'
alias gb='cd /home/yann/backup'
alias gB='cd /home/yann/Books'
alias gM='cd /run/media/yann'
alias gi='cd /home/yann/.config/i3'


#############################
##  edit with nvim aliases  ##
#############################

alias ei='nvim /home/yann/.config/i3/config'
alias ev='nvim /home/yann/.config/vim/init.vim'
alias eb='nvim /home/yann/.bashrc'
alias el='nvim /home/yann/.bash_aliases'
alias ea='nvim /home/yann/.config/alacritty/alacritty.yml'
alias ex='nvim /home/yann/.Xresources'
alias ec='nvim /home/yann/.config/picom/picom.conf'
alias en='nvim /home/yann/Documents/notes'
alias et='nvim /home/yann/.tmux.conf'
alias er='nvim /home/yann/.config/ranger/rc.conf'
alias eR='nvim /home/yann/.config/ranger/rifle.conf'
alias ey='nvim /home/yann/.config/ytfzf/conf.sh'
alias ep='nvim /home/yann/.config/polybar/config'

alias o6='sudo compton-trans -c 60'
alias o7='sudo compton-trans -c 70'
alias o8='sudo compton-trans -c 80'
alias o9='sudo compton-trans -c 90'
alias o95='sudo compton-trans -c 95'
alias o0='sudo compton-trans -c 100'


###############################
##  mount / unmount aliases  ##
###############################

alias mphone='$HOME/bin/scripts/mountphone.sh'
alias uphone='$HOME/bin/scripts/unmountphone.sh'


#######################
##  program aliases  ##
#######################

# download remote emails to local dir with 'isync' package and index newly
# downloaded emails to make them searchable with 'notmuch' package
alias gmp='mbsync -V public@yanndebruyn.com; notmuch new 2>/dev/null'
alias gmy='mbsync -V yann@yanndebruyn.com; notmuch new 2>/dev/null'

alias mpv='mpv --no-osd-bar'

alias fzf='fzf --multi --preview "bat --color=always --style=numbers --line-range=:500 {}"'

alias yt='ytfzf -t -l'
alias ytf='ytfzf -t -f'
alias ys='ytfzf -t -l --subs=20'
alias ysf='ytfzf -t -f --subs=20'


######################
##  source aliases  ##
######################

alias sb='source $HOME/.bashrc'
alias sa='source $HOME/.bash_aliases'

alias cheat='function __cheat() { cat /home/yann/.cheat/$*; unset -f __cheat;}; __cheat'
alias cheatvim='function __cheatvim() { nvim /home/yann/.cheat/$*; unset -f __cheatvim;}; __cheatvim'
alias cheats='ls /home/yann/.cheat/'
alias cheatbat='function __cheatbat() { bat /home/yann/.cheat/$*; unset -f __cheatbat;}; __cheatbat'
alias cheatless='function __cheatless() { less /home/yann/.cheat/$*; unset -f __cheatless;}; __cheatless'

alias note='function __note() { cat /home/yann/Documents/notes/$*; unset -f __note;}; __note'
alias notevim='function __notevim() { nvim /home/yann/Documents/notes/$*; unset -f __notevim;}; __notevim'
alias notes='ls /home/yann/Documents/notes'
alias noteless='function __noteless() { less /home/yann/Documents/notes/$*; unset -f __noteless;}; __noteless'
alias noterm='function __noterm() { rm /home/yann/Documents/notes/$*; unset -f __noterm;}; __noterm'


# Custom variables
h=/home/yann
D=/home/yann/Documents
d=/home/yann/Downloads
k=/home/yann/Desktop
p=/home/yann/Pictures
w=/home/yann/Pictures/wallpapers
W=/home/yann/Websites
WW=/var/www
v=/home/yann/Videos
s=/home/yann/bin/scripts
P=/home/yann/bin/popup
G=/home/yann/git
S=/home/yann/Pictures/screenshots
t=/home/yann/Documents/Teachings
m=/home/yann/Music
b=/home/yann/backup
B=/home/yann/Books
M=/media/yann

export POPUP_DIR=/home/yann/bin/popup
export SCRIPTS_DIR=/home/yann/bin/scripts
