#!/bin/bash

### 1. Verify your gpu is cuda enable check
lspci | grep -i nvidia

### 2. If you have previous installation remove it first. 
sudo apt purge nvidia* -y
sudo apt remove nvidia-* -y
sudo rm /etc/apt/sources.list.d/cuda*
sudo apt autoremove -y && sudo apt autoclean -y
sudo rm -rf /usr/local/cuda*

# 3. install other import packages
sudo apt install g++ freeglut3-dev build-essential libx11-dev libxmu-dev libxi-dev libglu1-mesa libglu1-mesa-dev
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt update && sudo apt upgrade -y

# 4. find recommended driver versions for you
ubuntu-drivers devices

# install nvidia driver with dependencies
sudo apt install nvidia-driver-535 nvidia-utils-535 -y
