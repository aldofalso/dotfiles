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
PS1="\[\e[32m\]\W\[\e[m\] "
