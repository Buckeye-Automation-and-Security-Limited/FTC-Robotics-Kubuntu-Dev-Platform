#!/usr/bin/env bash

#Configure console to disable bracketed paste
#The unintuitive default behavior for pasting bracketed text is [ctrl] + [shift] + v
#This allows pasting more clipboard contents with [ctrl] + v correctly

echo "" | sudo tee -a /etc/inputrc > /dev/null
echo "# \"user\" defined rules post installation" | sudo tee -a /etc/inputrc > /dev/null
echo "set enable-bracketed-paste off" | sudo tee -a /etc/inputrc > /dev/null

#Autohide the task bar
sudo apt-get -y install qdbus-qt5 qdbus-qt6 qtchooser

qdbus org.kde.plasmashell /PlasmaShell org.kde.PlasmaShell.evaluateScript "panels()[0].hiding = 'autohide'"

#Pin my favorite applications to the task bar

sed -i -E "s|launchers.*|launchers=applications:systemsettings.desktop,applications:org.kde.konsole.desktop,preferred://filemanager,preferred://browser,applications:org.kde.kate.desktop|" ~/.config/plasma-org.kde.plasma.desktop-appletsrc

#kwallet .kwl files are only configurable via gui, turning off due to this low security needs application
#kwallet .kwl files are only configurable via gui, turning off due to this low security needs application

kwriteconfig6 --file kwalletrc --group 'Wallet' --key 'Enabled' 'false'

#use gearlever to automagically make the Cura AppImage look native in the program menu

sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

sudo wget -P /tmp/flathub.gpg https://flathub.org/repo/flathub.gpg

sudo flatpak -y install flathub it.mijorus.gearlever

yes | flatpak run it.mijorus.gearlever --integrate ~/Applications/Cura.AppImage

sed -i 's/Categories.*/Categories=Multimedia/g' ~/.local/share/applications/ultimaker_cura.desktop
