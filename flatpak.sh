#!/usr/bin/env bash

#Configure console to disable bracketed paste
#The unintuitive default behavior for pasting bracketed text is [ctrl] + [shift] + v
#This allows pasting more clipboard contents with [ctrl] + v correctly

sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

sudo wget -P /tmp/flathub.gpg https://flathub.org/repo/flathub.gpg

