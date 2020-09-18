# These should be standard, but defining in case

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

## I've added an extra zero for the 2 sizes
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000
HISTFILESIZE=20000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# prompt
PS1='\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# fix window title
PS1="\[\e]0;\u@\h: \w\a\]$PS1"

if [ -f ~/.dotfiles/bash/.bash_aliases ]; then
    . ~/.dotfiles/bash/.bash_aliases
fi

# add path for go/bin
if [ -d ~/go/bin ]; then
    export PATH=~/go/bin:$PATH
fi

export PATH=/sbin:/usr/sbin:/usr/local/sbin:$PATH
