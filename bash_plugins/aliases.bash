#!/bin/bash

# terminal-only stuff
alias gdb='gdb -q'
alias pingg='ping 8.8.8.8'
alias cala='cal -A1'
alias calb='cal -B1'
alias calab='cal -A1 -B1'
alias ls='ls --color=auto'
alias la='ls -a'
alias l='ls'
alias sl='ls'
alias ll='ls -lFh'
alias ltr='ls -ltrFh'
alias grep='grep --color=auto -n'
alias dce='dc -e'
alias psagrep="ps -A | grep"
alias vims="vim -S"
alias vimp="vim -p"

# typo correction
alias clea="clear"
alias rls="ls"

alias mv="mv -i" # for safety, ask before destructive move
alias cp="cp -i" # for safety, ask before destructive copy

alias less='bat' # bat is a separate utility: https://github.com/sharkdp/bat
alias feh='feh -.' # feh is an image viewing utility. this makes feh auto-resize to window

# launch the calculator dc with hex mode
alias dchex='dc -e "[dc with radix 16]p16o16ic" -'

# stuff related to X and other graphical stuff
alias set-wifi='nmcli r wifi off && nmcli r wifi on'
alias xclip='xclip -i -selection clipboard'
alias soundlvl='amixer | head -5'
alias swapctrl='/usr/bin/setxkbmap -option "ctrl:nocaps"'
alias swapkeys='xmodmap -e "keycode 49 = Escape"; xmodmap -e "keycode9 = grave asciitilde"'
alias swapkeysoff='xmodmap -e "keycode 9 = Escape"; xmodmap -e "keycode 49 = grave asciitilde"'

alias mountwindows='sudo mount /dev/nvme0n1p4 ~/mnt'
alias fixmonitors='xrandr --output HDMI-0 --pos 1920x0 --output DVI-I-1 --pos 3840x0'

# volume mixer stuff
alias voldown='amixer -D pulse sset Master on 5%-'
alias volmute='amixer -D pulse sset Master toggle'
alias volup='amixer -D pulse sset Master on 5%+'

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

