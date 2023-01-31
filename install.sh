#!/bin/bash

## Install Packages
# Debian
sudo apt install bash exa curl git python3 -y

## Git clone
cd /tmp
git clone https://github.com/Efrei-Paul/basic-config.git
cd /tmp/basic-config

while getops 'l:' OPTION; do
    case "$OPTION" in
        a)
        echo `\nInstalling Workstation packages\n`
        bash ./install-workstation.sh
        ;;
    esac
done
## Set Up
cp ./bashrc ~/.bashrc
sudo cp ./bashrc ~/.bashrc