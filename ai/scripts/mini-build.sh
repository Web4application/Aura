sudo chroot chroot /bin/bash
sudo debootstrap --arch=amd64 stable chroot http://deb.debian.org/debian
mkdir ~/minios
cd ~/minios
mkdir chroot iso
sudo apt update
sudo apt install debootstrap xorriso squashfs-tools grub-pc-bin grub-efi-amd64-bin mtools
apt update
apt install -y \
    build-essential clang gcc g++ gdb cmake make ninja-build meson \
    rustc cargo golang nodejs npm python3 python3-pip openjdk-17-jdk maven gradle \
    dart flutter swift \
    sqlite3 postgresql mysql-server mongodb \
    docker.io podman skopeo buildah \
    git curl wget unzip vim nano zsh fish
    nano /usr/local/bin/mini-build
    chmod +x /usr/local/bin/mini-build
useradd -m dev -s /bin/bash
echo "dev:dev" | chpasswd
adduser dev sudo

cd ~/minios
mkdir -p iso/live
sudo mksquashfs chroot iso/live/filesystem.squashfs -e boot
cp -r chroot/boot iso/boot
grub-mkrescue -o MiniOS.iso iso
    
