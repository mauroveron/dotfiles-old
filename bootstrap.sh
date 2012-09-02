#!/bin/sh
INSTALL_DIR=$HOME/code/mine
mkdir -p $INSTALL_DIR
sudo apt-get install -y git-core
git clone https://github.com/mauroveron/dotfiles.git $INSTALL_DIR/dotfiles
bash $INSTALL_DIR/dotfiles/install.sh
