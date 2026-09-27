#!/usr/bin/env bash

#Start with a fully upgraded square 1 installation

sudo apt-get update
sudo apt-get -y upgrade

#Install Microsoft fonts

echo "ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true" | sudo debconf-set-selections && sudo apt-get install -y ttf-mscorefonts-installer

#Learn what all these do, they are useful

#Install utilities
sudo apt-get -y install 7zip flatpak git gparted rsync tree vim

#Install multimedia
sudo apt-get -y install imagemagick ffmpeg gimp recordmydesktop vlc

#Install productivity
sudo apt-get -y install libreoffice okular

#Install webtools
sudo apt-get -y install curl filezilla ktorrent wget

echo "Post provisioning resources:" > /home/$USER/Desktop/post-install-resources.txt
echo "" >> /home/$USER/Desktop/post-install-resources.txt
