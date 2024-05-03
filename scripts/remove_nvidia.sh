#!/bin/bash

sudo apt-get update -y && sudo apt-get upgrade -y
sudo apt-get purge -y nvidia*
sudo apt-get autoremove
sudo apt-get autoclean
sudo rm -rf /usr/local/cuda*$(uname -r)
