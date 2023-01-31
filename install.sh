#!/bin/bash

## Install Packages
# Debian
sudo apt install bash exa curl git python3 -y

## Git clone
cd /tmp
git clone https://github.com/Efrei-Paul/basic-config.git
cd /tmp/basic-config

while getops 'ad:' OPTION; do
    case "$OPTION" in
        a)
        echo `\nInstalling Workstation packages\n`
        bash ./lib/install-workstation.sh
        ;;
        d)
        echo `\nInstalling Docker\n`
        curl -fsSL https://get.docker.com -o get-docker.sh
        sudo sh get-docker.sh
        echo "Adding user $USER to docker group"
        sudo usermod -aG docker $USER
    esac
done
## Set Up
cp ./dotfiles/bashrc ~/.bashrc
sudo cp ./dotfiles/bashrc ~/.bashrc