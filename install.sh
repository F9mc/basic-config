#!/bin/bash

## Install Packages
# Debian
sudo apt update -y 
sudo apt upgrade -y
sudo apt install bash exa curl git -y

## Git clone
git clone https://github.com/Efrei-Paul/basic-config.git
cd basic-config

## Set Up
cp ./bashrc ~/.bashrc
sudo cp ./bashrc ~/.bashrc