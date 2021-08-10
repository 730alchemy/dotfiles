# directory for dotfiles from my git repo
export DOT_REPO="$HOME/dotfiles"

# directories for dotfiles used by my shells and applications
export DOT_HOME="$HOME/.config"
export DOT_ZSH="$DOT_HOME/zsh"
#export DOT_VIM="$DOT_HOME/vim"

# directory zsh uses to find configuration files
export ZDOTDIR=$DOT_ZSH

# History filepath
export HISTFILE="$ZDOTDIR/.zhistory"
# Maximum events for internal history
export HISTSIZE=3000
# Maximum events in history file
export SAVEHIST=2000
