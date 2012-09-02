#! /bin/bash

echo Installing basic packages
sudo apt-get install git-core \
                build-essential \
                vim \
                vim-gtk \
                exuberant-ctags \
                zsh \
                chromium-browser \
                ack-grep \
                touchpad-indicator \
                gimp \
                synapse \
                rednotebook \
                terminator \
                gitg \
                apache2-mpm-prefork \
                libapache2-mod-php5 \
                php5-mysql \
                php5-cli \
                php5-curl \
                php5-gd \
                php5-dev \
                php-apc \
                mysql-server \
                libmysqlclient-dev \
                sqlite3 \
                screen \
                wget \
                curl


echo Creating directory structure for code
mkdir -p code/mine
mkdir -p code/umami
mkdir -p code/opensource

echo Installing dotfiles
git clone git@github.com:mauroveron/dotfiles.git code/mine/dotfiles
bash ~/code/mine/dotfiles/install.sh

echo Installing rbenv
curl https://raw.github.com/fesplugas/rbenv-installer/master/bin/rbenv-installer | bash
