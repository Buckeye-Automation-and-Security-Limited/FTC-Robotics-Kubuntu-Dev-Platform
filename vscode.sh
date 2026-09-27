#!/usr/bin/env bash

#Install MS VSCode

sudo touch /etc/apt/sources.list.d/vscode.sources
echo "Types: deb
URIs: https://packages.microsoft.com/repos/code
Suites: stable
Components: main
Architectures: amd64
Signed-By: /etc/apt/keyrings/microsoft.gpg" | sudo tee /etc/apt/sources.list.d/vscode.sources

#sudo apt-get -y update

sudo apt clean && sudo apt autoclean && sudo apt update

sudo apt-get -y install code
