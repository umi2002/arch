#!/bin/bash

su umi << "EOF"
curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-cli/master/install.sh | sh
cp -rf ./spicetify/ /home/umi/.config/
curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-marketplace/main/resources/install.sh | sh
EOF
