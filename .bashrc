#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
# PS1='[\u@\h \W]\$ '

# Change terminal color
export PS1="\[\e[31m\][\[\e[m\]\[\e[31m\]\u\[\e[m\]\[\e[31m\]@\[\e[m\]\[\e[31m\]\h\[\e[m\]\[\e[31m\] \[\e[m\]\[\e[31m\]\W\[\e[m\]\[\e[31m\]]\[\e[m\]\[\e[31m\]\\$\[\e[m\] "

# Change from emacs to vi mode
# set -o vi

