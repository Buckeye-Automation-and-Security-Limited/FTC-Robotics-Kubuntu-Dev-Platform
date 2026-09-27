#!/usr/bin/env bash

#Install MS Edge browser

sudo touch /etc/apt/sources.list.d/edge.sources
echo "Types: deb
URIs: https://packages.microsoft.com/repos/edge
Suites: stable
Components: main
Architectures: amd64
Signed-By: /etc/apt/keyrings/microsoft.gpg" | sudo tee /etc/apt/sources.list.d/edge.sources

sudo apt clean && sudo apt autoclean && sudo apt update

sudo apt-get -y install microsoft-edge-stable
