#!/usr/bin/env bash

wget -q https://packages.mozilla.org/apt/repo-signing-key.gpg -O - | sudo tee /usr/share/keyrings/packages.mozilla.org.asc
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.mozilla.org.asc] https://packages.mozilla.org/apt mozilla main" | sudo tee /etc/apt/sources.list.d/google-chrome.list > /dev/null

sudo echo "Package: *
Pin: release o=LP-PPA-mozillateam
Pin-Priority: 1001

Package: firefox
Pin: version 1:1snap*
Pin-Priority: -1" | sudo tee /etc/apt/preferences.d/mozilla-firefox > /dev/null

sudo apt-get update
sudo apt-get -y install firefox
