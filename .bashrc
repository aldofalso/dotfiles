# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

shopt -s autocd

alias reboot='sudo reboot'
alias poweroff='sudo poweroff'
alias zzz='sudo zzz'
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
