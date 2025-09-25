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

# In WSL
# Add their repository
echo "deb [trusted=yes] https://wsl-translinux.arkane-systems.net/apt/ /" > /etc/apt/sources.list.d/wsl-translinux.list
# Install Genie
sudo apt update
sudo apt install -y systemd-genie

# In WSL
wget https://packages.microsoft.com/config/debian/12/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo apt update
sudo apt install -y apt-transport-https
sudo apt update
sudo apt install -y dotnet-sdk-3.1

# In WSL
sudo update-alternatives --set iptables /usr/sbin/iptables-legacy
sudo update-alternatives --set ip6tables /usr/sbin/ip6tables-legacy

# In WSL
# Let's switch to the root user, if you were not already
sudo su

# Initialize the Genie bottle to have systemd running
genie -s
# Your hostname should have been appended with "-wsl"

cd ~
wsl --export YunoHost .\WSL\YunoHost.tar.gz
