#!/bin/bash

su umi << "EOF"
# Switch to nightly
rustup default nightly

# Install necessary libraries
sudo pacman -S gtk3 gtk-layer-shell pango gdk-pixbuf2 cairo glib2 gcc-libs glibc --needed --noconfirm

# Clone eww repository
cd ~/srcpkgs/
git clone https://github.com/elkowar/eww

# Change to eww directory
cd eww

# Build eww
cargo build --release --no-default-features --features=wayland

# Make eww executable
chmod +x target/release/eww

cd /arch
EOF
