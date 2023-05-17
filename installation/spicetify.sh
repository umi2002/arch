#!/bin/bash

su umi << "EOF"
cd ~/srcpkgs/
curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-cli/master/install.sh | sh
export PATH=/home/umi/.spicetify/:$PATH
cp /arch/config/spicetify/
curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-marketplace/main/resources/install.sh | sh
cd /arch
EOF
