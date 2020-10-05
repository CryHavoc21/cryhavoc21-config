#!/bin/bash

# terminal-only stuff
alias gdb='gdb -q'
alias swipl='swipl -q'
alias feh='feh -.'
alias pingg='ping 8.8.8.8'
alias cala='cal -A1'
alias calb='cal -B1'
alias calab='cal -A1 -B1'
alias ls='ls --color=auto'
alias la='ls -a'
alias l='ls'
alias sl='ls'
alias ll='ls -lF'
alias ltr='ls -ltrF'
alias grep='grep --color=auto -n'
alias less='bat' # bat is a separate utility: https://github.com/sharkdp/bat

# stuff related to X and other graphical stuff
alias t-mute='amixer set Speaker toggle; amixer set Master on'
alias set-wifi='nmcli r wifi off && nmcli r wifi on'
alias xclip='xclip -i -selection clipboard'
alias soundlvl='amixer | head -5'
alias set-sense='xinput set-prop "Logitech M510" "Device Accel Constant Deceleration" 2.5'
alias update='sudo apt update -y && sudo apt upgrade -y'
alias to-hdmi='xrandr --output eDP-1 --off --output HDMI-1 --auto && pacmd set-default-sink 0'
alias to-disp='xrandr --output HDMI-1 --off --output eDP-1 --auto && pacmd set-default-sink 1'
alias lo='libreoffice'
alias keyboard='/usr/bin/setxkbmap -option "ctrl:nocaps"'

# "open things in firefox"
of() {
    firefox "$1" 2>/dev/null
}

# convert to/from decimal, hex, and octal. wrapper for printf
todec() {
    if [ -t 0 ]; then
        printf "%d\n" $1
    else 
        while read -r line ; do
            printf "%d\n" $line
        done
    fi
}
tohex() {
    if [ -t 0 ]; then
        printf "%x\n" $1
    else 
        while read -r line ; do
            printf "%x\n" $line
        done
    fi
}
tooct() {
    if [ -t 0 ]; then
        printf "%o\n" $1
    else 
        while read -r line ; do
            printf "%o\n" $line
        done
    fi
}

source ~/.goto.bash


