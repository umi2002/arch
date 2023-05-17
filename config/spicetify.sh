#!/bin/bash

su umi << "EOF"
export PATH=$PATH:/home/umi/.spicetify/
cp -rf ./spotify/ ~/.config/
cd ~/srcpkgs/
sudo chown umi /opt/spotify/
curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-marketplace/main/resources/install.sh | sh
cp -rf ./spicetify/Themes/ ~/.config/spicetify/
spicetify backup apply
cd /arch
EOF
