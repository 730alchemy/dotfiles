#! /bin/bash
# ensure the following environment variables are set
#   DOT_ZSH - set to the same folder as DOT_ZSH in dotfiles/zsh/.zshenv
#   DOT_REPO - set to the folder in which the dotfiles repo was cloned (e.g. ~/dotfiles)
#
# ensure the following directories exist
#   $HOME/.vim

# create directories and symlinks for zsh
#
mkdir -p "$DOT_ZSH"
ln -sf "$DOT_REPO/zsh/.zshenv" "$HOME/"
ln -sf "$DOT_REPO/zsh/.zshrc" "$DOT_ZSH"
ln -sf "$DOT_REPO/zsh/.zprofile" "$DOT_ZSH"
rm -rf "$DOT_ZSH/external"
ln -sf "$DOT_REPO/zsh/external" "$DOT_ZSH"

# create directories and symlinks for vim
#
#mkdir -p "$DOT_VIM"
ln -sf "$DOT_REPO/vim/.vimrc" "$HOME" 
ln -sf "$DOT_REPO/vim" "$HOME/.vim"


# install vim packages
#

# install vim plugin manager
#[ ! -f "$DOT_REPO/vim/autoload/plug.vim" ] \
