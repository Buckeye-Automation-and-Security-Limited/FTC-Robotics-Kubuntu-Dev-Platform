#!/usr/bin/env bash

if command -v snap &> /dev/null; then

#Remove snap

#To see installed snaps, use: snap list
#Libraries can only be removed after dependencies

sudo snap remove --purge bare
sudo snap remove --purge firefox
sudo snap remove --purge gnome-3-38-2004 # or newer gnome runtimes if present
sudo snap remove --purge gnome-42-2204
sudo snap remove --purge gnome-46-2404
sudo snap remove --purge gtk-common-themes
sudo snap remove --purge mesa-2404
sudo snap remove --purge snap-store

sudo snap remove --purge core20
sudo snap remove --purge core22
sudo snap remove --purge core24

sudo snap remove --purge snapd

fi
