# Let's go in your home directory and prepare the working directories
cd ~
mkdir -p WSL\YunoHost
# Download the Debian appx package and unzip it
curl.exe -L -o debian.zip https://aka.ms/wsl-debian-gnulinux
Expand-Archive .\debian.zip -DestinationPath .\debian
# Import the Debian base into a new distro
wsl --import YunoHost ~\WSL\YunoHost ~\debian\install.tar.gz --version 2
# Cleanup
rmdir .\debian -R
