#!/bin/bash
set -e
echo "[+] Building Aura MiniOS ISO..."

# Clean
rm -rf build iso/initrd.img

# Build initrd
./scripts/mkinit.sh

# Setup GRUB
./scripts/mkgrub.sh

# Create ISO
./scripts/mkiso.sh

echo "[+] Done. ISO at aura-minios.iso"
