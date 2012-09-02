#!/bin/sh
CWD=`pwd`
REL_PATH=`dirname $0 | sed "s:$HOME/::"`

if [ $REL_PATH == "." ] ; then
  DOTFILES="$CWD"
else
  DOTFILES="$CWD/$REL_PATH"
fi

echo "Installing dotfiles from '$DOTFILES'"

ln -s $DOTFILES/zshrc $HOME/.zshrc
ln -s $DOTFILES/oh-my-zsh $HOME/.oh-my-zsh
ln -s $DOTFILES/vim $HOME/.vim
ln -s $DOTFILES/vimrc $HOME/.vimrc
ln -s $DOTFILES/my.cnf $HOME/.my.cnf
ln -s $DOTFILES/gitconfig $HOME/.gitconfig
ln -s $DOTFILES/screenrc $HOME/.screenrc

echo Done.
