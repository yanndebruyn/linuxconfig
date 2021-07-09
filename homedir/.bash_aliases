
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
alias gP='cd /home/yann/bin/popup'
alias gG='cd /home/yann/git'
alias gt='cd /home/yann/Teachings'
alias gm='cd /home/yann/Music'
alias gb='cd /home/yann/backup'
alias gB='cd /home/yann/Books'
alias gM='cd /media/yann'
alias gi='cd /home/yann/.config/i3'


#############################
##  edit with vim aliases  ##
#############################

alias ei='vim /home/yann/.config/i3/config'
alias ev='vim /home/yann/.vimrc'
alias eb='vim /home/yann/.bashrc'
alias eba='vim /home/yann/.bash_aliases'
alias ea='vim /home/yann/.config/alacritty/alacritty.yml'
alias ex='vim /home/yann/.Xresources'
alias ec='vim /home/yann/.compton.conf'
alias en='vim /home/yann/Documents/notes'
alias el='vim /home/yann/Documents/learninglinux'
alias et='vim /home/yann/.tmux.conf'
alias er='vim /home/yann/.config/ranger/rc.conf'
alias eR='vim /home/yann/.config/ranger/rifle.conf'
alias ey='vim /home/yann/.config/ytfzf/conf.sh'

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
