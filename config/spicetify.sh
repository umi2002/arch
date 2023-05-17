#!/bin/bash

su umi << "EOF"
cp -rf ./spicetify/ ~/.config/
curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-marketplace/main/resources/install.sh | sh
EOF
