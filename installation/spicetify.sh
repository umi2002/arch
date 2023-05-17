#!/bin/bash

su umi << "EOF"
cd ~/srcpkgs/
curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-cli/master/install.sh | sh
cd /arch
cp -rf ../config/spicetify/ /home/umi/.config/
curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-marketplace/main/resources/install.sh | sh
EOF
