#!/bin/bash
# This script is for stellarkin distro.  Installs packages on startup to reduce the size of the img
wget -q --tries=10 --timeout=200 --spider http://google.com
if [[ $? -eq 0 ]]; then
  echo "Installing Stellarium and Tuxpaint on first boot...This may take some time."
  sudo apt-get install -y stellarium tuxpaint && \
  rm /home/pi/.config/stellarkin/post_install.sh && \
  rm /home/pi/.config/autostart/run-once.desktop
else
  echo "You appear to be offline.  Please configure networking and reboot to complete installation..."
  sleep 15
fi


