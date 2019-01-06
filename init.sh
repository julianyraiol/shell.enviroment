#!/bin/bash

# update system

echo "update =========> system"
sleep 3

apt-get update
apt-get upgrade

# install git

echo "install =========> git"
sleep 3

apt-get install git

echo "What's your git email?"
read gitemail

echo "What's your git name?"
read gitname

git config --global user.email gitemail
git config --global user.name gitname

# install vim

echo "install =========> vim"
sleep 3

apt-get install vim

# install spotify

echo "install =========> spotify"

apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
apt-get update
apt-get install spotify-client


# edit terminal
echo "edit bashrc"
sleep 3

git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh
source .bashrc




