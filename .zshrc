# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"
setopt bash_autolist

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
 COMPLETION_WAITING_DOTS="true"

###############################################
# colors and prompt
autoload -U colors && colors
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"
PS1="%{$fg[blue]%}%~ %{$reset_color%}%% "
RPROMPT="%{$fg[red]%}%n%{$reset_color%}@%{$fg[yellow]%}%m ${return_code} %{$fg[green]%}%t%{$reset_color%}"

unsetopt correct_all

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
