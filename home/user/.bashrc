#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH="$HOME/.config/scripts:$PATH"

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
export PS1="\e[36m\u \e[32min \e[31m \e[36m\W \nλ "
alias code='vscodium'
