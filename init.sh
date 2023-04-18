#!/usr/bin/env bash
sudo apt-get update -y
sudo apt-get install -y gpg wget curl unzip git
wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | sudo tee /usr/share/keyrings/kitware-archive-keyring.gpg >/dev/null
echo 'deb [signed-by=/usr/share/keyrings/kitware-archive-keyring.gpg] https://apt.kitware.com/ubuntu/ $(lsb_release --codename --short) main' | sudo tee /etc/apt/sources.list.d/kitware.list >/dev/null
sudo rm /usr/share/keyrings/kitware-archive-keyring.gpg
sudo apt-get update -y
sudo apt-get install -y zsh kitware-archive-keyring cmake g++ ninja-build
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
chsh -s "$(which zsh)"
exec zsh
