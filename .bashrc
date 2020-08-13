# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

shopt -s autocd

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
