


# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

prompt_if_root() {
    if [ $(id -u) == "0" ]; then
        printf "\e[01;91m"
    else
        printf "\e[01;32m"
    fi
}

#PS1='\[$(prompt_if_root)\]\u@\h\[\e[00m\]:\[\e[01;34m\]\w\[\e[00m\]\[\e[01;96m\]$(__git_ps1)\[\e[00m\]\$ '
PS1='\[$(prompt_if_root)\]\u@\h\[\e[00m\]:\[\e[01;34m\]\w\[\e[00m\]\[\e[01;96m\]\[\e[00m\]\n\$ '

alias ls='ls -G'
#alias dir='dir --color=auto'
#alias vdir='vdir --color=auto'

alias grep='grep --color=auto'
#alias fgrep='fgrep --color=auto'
#alias egrep='egrep --color=auto'

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

export PS2=">>> "


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# sandbox scripts for athome
export SALESFORCE_REPO_USERNAME="credera-crichards"
export SALESFORCE_REPO_PASSWORD="3a1122a5a9f97a7bc334971aae82b99bea1d5494"
export DEV08_BUILD_USERNAME="dev08_build"
export DEV08_BUILD_PASSWORD='8mOr5I!M74rainbowunicorn'
export SANDBOX_HOSTNAME="dev08-web-athome.demandware.net"
export DEMO_BUILD_USERNAME="demo_build"
export DEMO_BUILD_PASSWORD="aIorXrX7o!k5"
