#!/usr/bin/env bash

# Add the Marcel Kapfer IntelliJ PPA non-interactively
sudo add-apt-repository -y ppa:mmk2410/intellij-idea-community

# Update apt repositories and install IntelliJ IDEA Community Edition without prompts
sudo apt-get update

sudo apt-get install -y intellij-idea-community
