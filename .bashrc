#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH="$HOME/.config/scripts:$PATH"

# Aliases
alias ls='ls --color=auto'
alias code='vscodium'
alias vim='nvim'

# Prompt customization
PS1='[\u@\h \W]\$ '
#PS1='\[\e[0;38;5;140m\][\[\e[0;38;5;84m\]\u\[\e[0;38;5;140m\]@\[\e[0;38;5;220m\]\h \[\e[0m\]\w\[\e[0;38;5;140m\]]\[\e[0;38;5;44m\]\$ \[\e[0m\]'

eval "$(starship init bash)"
