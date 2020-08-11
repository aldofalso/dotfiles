shopt -s autocd

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias zzz='sudo systemctl suspend'
alias ls='ls --color=auto'
