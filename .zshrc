#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

test -e ~/.local.rc && source ~/.local.rc

export TERM=xterm-256color
export PAGER="less -S"
# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
bindkey '^R' history-incremental-search-backward 
export EDITOR=vim

#test -d ~/.rvm && source ~/.rvm/scripts/rvm && rvm use 1.9.2
#test -e ~/bin/synchome.sh && ~/bin/synchome.sh

#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
#setxkbmap -option "caps:escape"
