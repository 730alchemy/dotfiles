# Dotfiles

Mention ZSH

What does this repo provide?

This is for ZSH!!
>Clone this repo into the root of your home directory

## Installion Script

#### Prepare To Run The Script


- DOT_ZSH - must have the same value as DOT_ZSH in the file dotfiles/zsh/.zshenv
- DOT_REPO - set to the folder in which the dotfiles repo was cloned (e.g. ~/dotfiles)
- $HOME/.vim - directory must exist

#### Run The Script
- run the script in a zsh shell

#### After running the script
* restart the terminal to use node and npm

## VIM

>Use vim with python 3 support

#### Mac OS system

>By default on macOS (?) vim has python 2 support
. Vim installed with brew has python 3 support. It also includes the "conceal" feature, which is recommended for jedi-vim

## Plugins

Plugins installed in this repo

- jedi-vim
- vim-airline
- take a look at powerline

#### Installing VIM plugins

The default location for vim plugins is ~/.vim

- install.sh creates a symbolic link from ~/.vim to ~/dotfiles/vim

Use the vim package system and git submodules

- https://git-scm.com/book/en/v2/Git-Tools-Submodules
- https://medium.com/@paulodiovani/installing-vim-8-plugins-with-the-native-pack-system-39b71c351fea
- to add a vim package run "git submodule add {package url} {target folder}

#### Procedure
- cd to ~/dotfiles/home/user/.vim/pack/dist/start
- git submodule add https://****
- if the submodule includes other submodules, git update and init recursively
    - cd to the submodule
    - git submodule update --init --recursive
_ help files will need to be generated. Run this command in vim
    - helptags ~/.vim/pack/dist/start/{plugin-name}/doc

Plugin portal
    - https://vimawesome.com/
