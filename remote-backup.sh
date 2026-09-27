#!/usr/bin/env bash

LOCALBACKUPDIR=$(grep "^LOCALBACKUPDIR=" config.txt | cut -d"=" -f2-)

BACKUPDESTINATIONHOST=$(grep "^BACKUPDESTINATIONHOST=" config.txt | cut -d"=" -f2-)
BACKUPDESTINATIONUSER=$(grep "^BACKUPDESTINATIONUSER=" config.txt | cut -d"=" -f2-)
BACKUPDESTINATIONPASS=$(grep "^BACKUPDESTINATIONPASS=" config.txt | cut -d"=" -f2-)
BACKUPDESTINATIONCERT=$(grep "^BACKUPDESTINATIONCERT=" config.txt | cut -d"=" -f2-)

BACKUPDESTINATIONDIR=$(grep "^BACKUPDESTINATIONDIR=" config.txt | cut -d"=" -f2-)

#Install sshfs
apt-get -y install borgbackup sshfs

#sshfs -o reconnect $BACKUPDESTINATIONUSER@$BACKUPDESTINATIONHOST:$BACKUPDESTINATIONDIR $LOCALBACKUPDIR



echo "" >> /home/$USER/Desktop/post-install-resources.txt
echo "sshfs is installed so that timeshift can use a remote directory as the backup destinaiton." >> /home/$USER/Desktop/post-install-resources.txt
