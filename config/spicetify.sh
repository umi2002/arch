#!/bin/bash

su umi << "EOF"
cp -rf ./spicetify/ ~/.config/
cd ~/srcpkgs/
curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-marketplace/main/resources/install.sh | sh
cd /arch
EOF
