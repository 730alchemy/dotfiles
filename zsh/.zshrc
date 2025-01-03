fpath=($ZDOTDIR/external $fpath)

#autoload -Uz prompt_setup; prompt_setup
autoload -Uz compinit; compinit

# Autocomplete hidden files
_comp_options+=(globdots)

source $DOT_REPO/zsh/external/completion.zsh

# configure prompt
source $DOT_REPO/zsh/external/git-prompt.zsh/git-prompt.zsh
source $DOT_REPO/zsh/my_multiline_prompt.zsh
ZSH_GIT_PROMPT_SHOW_STASH=1

# enable iterm2 integration if available
test -e /Users/mnorman/.config/zsh/.iterm2_shell_integration.zsh && source /Users/mnorman/.config/zsh/.iterm2_shell_integration.zsh || true

##
#   ALIASES
#
alias ga='git add'
alias gc='git commit'
alias gd='git diff'
alias gf='git fetch'
alias gl="git log --graph  --format='%C(bold blue)%h - %C(dim white)[%ar] %an - %C(dim green)%d%C(reset) - %C(white)%s'"
alias gs='git status'
alias l='ls -vAF'
alias ll='l'
alias ls='ls -Glh'
alias dirsv='dirs -v'

# aliases to run AppImages in the apps folder
alias cursor='nohup $(ls ~/apps/cursor* -C) . &'
#alias cursor='nohup exec $(ls ~/apps/cursor* -C) . &'
alias obsidian='exec $(ls ~/apps/Obsidian-* -C) &'

##
#   OPTIONS
#
setopt appendhistory

source $HOME/.zshrc

# set colors for ls
export LSCOLORS=gxfxcxdxbxegedabagacad

##
#   keep zsh-syntax-highlighting sourcing at the end of this file
#source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#
#   END OF .ZSHRC
##
