# dotfiles
clone this repo into the root of your home directory

## VIM
Use vim with python 3 support
    - mac os system vim has python 2 support
    - vim installed with brew has python 3 support
        - it also includes the "conceal" feature, which is recommended for jedi-vim

## Plugins
Plugins installed in this repo
    - jedi-vim
    - vim-airline
        - take a look at powerline

Installing VIM plugins
    - ~/.vim is the default location for vim plugins
        - install.sh creates a symbolic link from ~/.vim to ~/dotfiles/vim
    - use the vim package system and git submodules
        - https://git-scm.com/book/en/v2/Git-Tools-Submodules
        - https://medium.com/@paulodiovani/installing-vim-8-plugins-with-the-native-pack-system-39b71c351fea
    - procedure
        - cd to ~/dotfiles/vim/pack/dist/start
        - git submodule add https://****
        - if the submodule includes other submodules, git update and init recursively
            - cd to the submodule
            - git submodule update --init --recursive
        _ help files will need to be generated. Run this command in vim
            - helptags ~/.vim/pack/dist/start/{plugin-name}/doc

Plugin portal
    - https://vimawesome.com/
