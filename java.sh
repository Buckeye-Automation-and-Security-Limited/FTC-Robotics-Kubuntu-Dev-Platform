#!/usr/bin/env bash

#Install a java version manager

curl -s "https://get.sdkman.io" | bash

source ~/.sdkman/bin/sdkman-init.sh

sed -i 's/sdkman_auto_answer=false/sdkman_auto_answer=true/g' ~/.sdkman/etc/config

sdk install java
sdk install java 26.0.1-open
sdk default java 26.0.1-open
