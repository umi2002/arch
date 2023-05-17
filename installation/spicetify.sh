#!/bin/bash

su umi << "EOF"
sudo curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-cli/master/install.sh | sh
echo "export PATH=/home/umi/.spicetify/:$PATH" >> ~/.bashrc
cp -rf ../config/spicetify/ /home/umi/.config/
sudo curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-marketplace/main/resources/install.sh | sh
EOF
