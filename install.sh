#! /bin/bash

# create symlinks for zsh
mkdir -p "$HOME/.config/zsh"
ln -sf "$HOME/dotfiles/zsh/.zshenv" "$HOME/"
ln -sf "$HOME/dotfiles/zsh/.zshrc" "$HOME/.config/zsh"
ln -sf "$HOME/dotfiles/zsh/.zprofile" "$HOME/.config/zsh"
