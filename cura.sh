#!/usr/bin/env bash

mkdir ~/Applications

#they don't have a "latest" so this URI might need updated from time to time
#Ultimaker, the publishers of the Cura slicer, recommend installation into a ~/Applications directory
#may need to add it to the path for convenience

wget https://github.com/Ultimaker/Cura/releases/download/5.13.0/UltiMaker-Cura-5.13.0-linux-X64.AppImage -O ~/Applications/Cura.AppImage
wget https://upload.wikimedia.org/wikipedia/commons/9/9b/Logo_for_Cura_Software.png -O ~/Applications/CuraLogo.png

#make the standalone executable actually executable by setting the executable bit

chmod 774 ~/Applications/UltiMaker-Cura-5.13.0-linux-X64.AppImage
