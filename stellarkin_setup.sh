#!/bin/bash

# Install pre-requisite packages
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install raincat gamine pysycache childsplay gcompris tictactoe-ng klettres ktuberling khangman kanagram tanglet marble kgeography mah-jong lagan freecell-solver-bin gnome-mastermind kigo gnome-chess aisleriot tali mypaint* tuxpaint kstars kwordquiz scratch tuxmath kdeedu animals atomix basic256 gamine granule pysiogame tuxtype xball stellarium libreoffice gnome-dictionary gnome-breakout

# Move over the custom splash image
sudo cp ../resources/splash.png /usr/share/plymouth/themes/pix/

# Desktop/Menu customizations
cp -R ../config/* ~/.config/
cp -R ../desktop/* ~/Desktop

# Rename host
sudo hostnamectl set-hostname stellarkin

# Clean up after setup
sudo apt-get autoremove && sudo apt-get clean
sudo rm -rf /var/cache/apt/archive/* 
cat /dev/null > ~/.bash_history && history -c && exit

# Reboot at completion
read -p "Setup complete. The system needs to reboot now. Is this ok? [Y/n]" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    sudo reboot
fi
