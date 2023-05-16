#!/bin/bash

su umi << "EOF"
# Install rust and cargo
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source /home/umi/.cargo/env

# Switch to nightly
rustup default nightly

# Install necessary libraries
sudo pacman -S gtk3 gtk-layer-shell pango gdk-pixbuf2 cairo glib2 gcc-libs glibc --noconfirm

# Clone eww repository
cd /home/umi/srcpkgs/
git clone https://github.com/elkowar/eww

# Change to eww directory
cd eww

# Build eww
cargo build --release --no-default-features --features=wayland

# Make eww executable
chmod +x target/release/eww

cd /arch
EOF
