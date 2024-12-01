#! /bin/bash
#
# pre-conditions for running this script
#   DOT_ZSH - set to the same folder as DOT_ZSH in dotfiles/zsh/.zshenv
#   DOT_REPO - set to the folder in which the dotfiles repo was cloned (e.g. ~/dotfiles)
#   $HOME/.vim - directory exists

# verify environment variables are set
: "${DOT_ZSH:?Error: DOT_ZSH is not set. Exiting.}"
: "${DOT_REPO:?Error: DOT_REPO is not set. Exiting.}"

# create directories and symlinks for zsh

mkdir -p "$DOT_ZSH"
rm -rf "$DOT_ZSH/external"
ln -sfvt "$HOME" "$DOT_REPO/zsh/.zshenv"
ln -sfvt "$DOT_ZSH" "$DOT_REPO/zsh/.zshrc" "$DOT_REPO/zsh/.zprofile" "$DOT_REPO/zsh/external"

# create directories and symlinks for vim

ln -sfvt "$HOME" "$DOT_REPO/vim/.vimrc"

if [ ! -d "$DOT_ZSH/zsh-syntax-highlighting" ]; then
    pushd "$DOT_ZSH"
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
    popd
else
    echo "zsh-syntax-highlighting already cloned into $DOT_ZSH"
fi

# install vim packages
echo "updating submodules"
git submodule update --init --remote
echo "... done updating submodules"

# install vim plugin manager
#[ ! -f "$DOT_REPO/vim/autoload/plug.vim" ] \

# sync dotfile's home/user folder target's home/user
echo "synchronizing home directory"
rsync -am --cvs-exclude --exclude=.git $DOT_REPO/home/user/ $HOME
echo "... done synchronizing home directory"
