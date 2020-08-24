#!/bin/bash
# This script is for stellarkin distro.  Installs packages on startup to reduce the size of the img

echo "Installing Stellarium and Tuxpaint on first boot...This may take some time."
sudo apt-get install -y stellarium tuxpaint && rm /home/pi/.config/stellarkin/post_install.sh

