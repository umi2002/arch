#!/bin/bash

su umi << "EOF"
curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-cli/master/install.sh | sudo sh
cp -rf ../config/spicetify/ /home/umi/.config/
sudo curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-marketplace/main/resources/install.sh | sudo sh
EOF
