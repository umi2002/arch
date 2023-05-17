#!/bin/bash

su umi << "EOF"
export PATH=$PATH:/home/umi/.spicetify/
cp -rf ./spotify/ ~/.config/
cp -rf ./spicetify/ ~/.config/
cd ~/srcpkgs/
sudo chown /opt/spotify/
curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-marketplace/main/resources/install.sh | sh
cd /arch
EOF