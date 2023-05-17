#!/bin/bash

su umi << "EOF"
export PATH=$PATH:/home/umi/.spicetify/
cp -rf ./spotify/ ~/.config/
cp -rf ./spicetify/ ~/.config/
cd ~/srcpkgs/
curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-marketplace/main/resources/install.sh | sh
cd /arch
EOF
