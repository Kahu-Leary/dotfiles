# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# My aliases
alias n="neofetch"
alias sv="sudo nvim"
#alias v="nvim"
alias v="$HOME/.config/nvim/nvim.appimage"
alias sr="sudo ranger"
alias r="ranger"
alias c="cmatrix"
alias u="unimatrix -c cyan -n -s 96 -l o"
alias h="htop"
alias l="flatpak run io.gitlab.librewolf-community"
alias code="flatpak run com.vscodium.codium"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
