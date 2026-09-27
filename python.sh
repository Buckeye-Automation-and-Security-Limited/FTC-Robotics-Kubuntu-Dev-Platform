#!/usr/bin/env bash

#Install python and python stuff
sudo apt-get -y install python3 python3-pip

curl -LsSf https://astral.sh/uv/install.sh | sh

echo 'eval "$(uv generate-shell-completion bash)"' >> ~/.bashrc
