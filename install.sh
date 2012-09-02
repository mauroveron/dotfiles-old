#!/bin/sh
CWD=`pwd`
REL_PATH=`dirname $0`

if [ $REL_PATH == "." ] ; then
  DOTFILES="$CWD"
else
  DOTFILES="$CWD/$REL_PATH"
fi

echo "Installing dotfiles from '$DOTFILES'"

echo ln -s $DOTFILES/zshrc $HOME/.zshrc
echo ln -s $DOTFILES/oh-my-zsh $HOME/.oh-my-zsh
echo ln -s $DOTFILES/vim $HOME/.vim
echo ln -s $DOTFILES/vimrc $HOME/.vimrc
echo ln -s $DOTFILES/my.cnf $HOME/.my.cnf
echo ln -s $DOTFILES/gitconfig $HOME/.gitconfig
echo ln -s $DOTFILES/screnrc $HOME/.screenrc

echo Done.
