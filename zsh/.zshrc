fpath=($ZDOTDIR/external $fpath)

autoload -Uz prompt_setup; prompt_setup
autoload -Uz compinit; compinit

# Autocomplete hidden files
_comp_options+=(globdots)

source $DOT_REPO/zsh/external/completion.zsh

##
#   ALIASES
#
alias ga='git add'
alias gc='git commit'
alias gd='git diff'
alias gf='git fetch'
alias gs='git status'
alias l='ls'
alias ll='ls -a'
alias ls='ls -Glh'

##
#   OPTIONS
#
setopt appendhistory

source $HOME/.zshrc_local

##
#   keep zsh-syntax-highlighting sourcing at the end of this file
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#
#   END OF .ZSHRC
##
