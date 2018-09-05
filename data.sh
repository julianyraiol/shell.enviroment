#!/bin/bash

#update system

echo "update =========> system"
sleep 3

clear

#install anaconda 3

wget https://repo.anaconda.com/archive/Anaconda3-5.2.0-Linux-x86_64.sh
md5sum Anaconda3-5.2.0-Linux-x86_64.sh

bash Anaconda3-5.2.0-Linux-x86_64.sh
expect "In order to continue the installation process, please review the license agreement."
send '\n'
