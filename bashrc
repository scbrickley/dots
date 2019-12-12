#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\[\033[01;32m\]\u@\h\[\033[01;37m\] \W\[\033[01;32m\]\[\033[00m\] '

export EDITOR=/usr/bin/vim

source $HOME/.aliases

set -o vi

export TERM="screen-256color"
