#!/bin/bash

su umi << "EOF"
cd ~/srcpkgs/
curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-cli/master/install.sh | sh
cd /arch
EOF
