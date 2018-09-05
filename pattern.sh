#!/bin/bash

#update system

echo "update =========> system"
sleep 3

apt-get update
apt-get upgrade

clear

#install git

echo "install =========> git"
sleep 3

apt-get install git

git config --global user.email "you@example.com"
git config --global user.name "Your Name"

clear

#install vim

echo "install =========> vim"
sleep 3

apt-get install vim

clear


#install spotify

echo "install =========> spotify"

apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
apt-get update
apt-get install spotify-client
