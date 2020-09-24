# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

shopt -s autocd

alias ls='ls --color=auto'
PS1="\[\e[32m\]\W\[\e[m\] "
