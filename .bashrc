# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# My aliases
alias n="neofetch"
alias sv="sudo nvim"
alias v="nvim"
alias sr="sudo ranger"
alias r="ranger"
alias c="cmatrix"
alias h="htop"
