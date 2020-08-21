#!/bin/bash
# This script is for stellarkin distro.  Installs packages on startup to reduce the size of the img

sudo apt-get install -y stellarium tuxpaint
rm /etc/profile.d/stellarkin_firstboot.sh
