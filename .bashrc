#!/bin/sh
##
## ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

shopt -s autocd

alias reboot='loginctl reboot'
alias poweroff='loginctl poweroff'
alias suspend='loginctl suspend'
alias ls='ls --color=auto'
PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
