#!/usr/bin/env bash

LOCALBACKUPDIR=$(grep "^LOCALBACKUPDIR=" config.txt | cut -d"=" -f2-)

#install timeshift (configuration backup)
sudo apt-get -y install timeshift

#May need to preemptively find "the backup device" timeshift can see
#sudo timeshift --list-devices

mkdir -p $LOCALBACKUPDIR

#sudo timeshift --snapshot-device $LOCALBACKUPDIR

#todo timeshift.json configuration gets added here

echo "Be sure to check on the timeshift backup application to verify the backup settings are good." >> /home/$USER/Desktop/post-install-resources.txt
echo "" >> /home/$USER/Desktop/post-install-resources.txt
