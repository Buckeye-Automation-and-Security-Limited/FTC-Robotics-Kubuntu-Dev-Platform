#!/usr/bin/env bash

wget -q https://download.sublimetext.com/sublimehq-pub.gpg -O - | sudo tee /usr/share/keyrings/sublimehq-pub.asc > /dev/null

echo "deb [arch=amd64 signed-by=/usr/share/keyrings/sublimehq-pub.asc] https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

sudo apt-get update
sudo apt-get -y install sublime-text
