#!/usr/bin/env bash

rm /tmp/google-chrome.gpg

curl -fsSL https://dl.google.com/linux/linux_signing_key.pub | sudo gpg --dearmor -o /tmp/google-chrome.gpg

sudo cp /tmp/google-chrome.gpg /usr/share/keyrings/google-chrome.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/google-chrome.gpg] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google-chrome.list

sudo apt-get update
sudo apt-get -y install google-chrome-stable

# install extensions via terminal

# fill the array with the needed extensions
# key=["extension_name"] value="extension_ID"

declare -A EXTlist=(
    ["bitwarden"]="nngceckbapebfimnlniiiahkandclblb"
)

sudo mkdir -p /opt/google/chrome/extensions

for i in "${!EXTlist[@]}"; do
    # echo "Key: $i value: ${EXTlist[$i]}"
    echo '{"external_update_url": "https://clients2.google.com/service/update2/crx"}' | sudo tee /opt/google/chrome/extensions/${EXTlist[$i]}.json
done

sudo mkdir -p /etc/opt/chrome/policies/managed

echo '{
  "ExtensionSettings": {
    "nngceckbapebfimnlniiiahkandclblb": {
      "toolbar_pin": "force_pinned"
    }
  }
}' | sudo tee /etc/opt/chrome/policies/managed/extension_pin.json

echo '{
  "RestoreOnStartup": 1
}' | sudo tee /etc/opt/chrome/policies/managed/restore_tabs.json

xdg-settings set default-web-browser google-chrome.desktop
