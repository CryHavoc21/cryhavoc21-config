#!/bin/bash
#~/.bash_aliases

alias t-mute='amixer set Speaker toggle; amixer set Master on'
alias set-wifi='nmcli r wifi off && nmcli r wifi on'
alias gdb='gdb -q'
alias xclip='xclip -i -selection clipboard'
alias soundlvl='amixer | head -5'
alias set-sense='xinput set-prop "Logitech M510" "Device Accel Constant Deceleration" 2.5'
alias update='apt update -y && apt upgrade -y'
alias to-hdmi='xrandr --output eDP1 --off --output HDMI1 --auto && pacmd set-default-sink 0'
alias to-disp='xrandr --output HDMI1 --off --output eDP1 --auto && pacmd set-default-sink 1'
alias lo='libreoffice'


of() {
    firefox "$1" 2>/dev/null
}

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


