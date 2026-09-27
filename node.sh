#!/usr/bin/env bash

#Install a node version manager

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.4/install.sh | bash
source ~/.bashrc

nvm install --lts
nvm install node
nvm use node
