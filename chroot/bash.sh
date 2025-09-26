```
sudo debootstrap --arch=amd64 stable chroot http://deb.debian.org/debian
sudo chroot chroot /bin/bash

apt update
apt install -y \
    build-essential clang gcc g++ gdb cmake make ninja-build meson \
    rustc cargo golang nodejs npm python3 python3-pip openjdk-17-jdk maven gradle \
    dart flutter swift \
    sqlite3 postgresql mysql-server mongodb \
    docker.io podman skopeo buildah \
    git curl wget unzip vim nano zsh fish

    useradd -m dev -s /bin/bash
echo "dev:dev" | chpasswd
adduser dev sudo

apt clean
exit
qemu-system-x86_64 -cdrom MiniOS.iso -m 2048
```
