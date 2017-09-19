#!/bin/bash


sudo apt update -y && sudo apt upgrade -y
sudo apt install -y \
	git curl tmux fish screenfetch sl cowsay cmatrix npm python-pip python3-pip  vim\
	ruby build-essential mpv expect fortune-mod vlc nodejs-legacy htop glances mosh \
	nmap\
	docker docker-compose docker.io     \

sudo npm install -g speed-test gtop browser-sync vue-cli

sudo pip install neovim
sudo pip3 install neovim beautifulsoup4 lxml requests loads mps-youtube youtube_dl
sudo pip install --upgrade pip
sudo pip3 install --upgrade pip

git config --global user.name "Jingfei Qin"
git config --global user.email "qinjingfei1@gmail.com"


#run docker without root
sudo usermod -aG docker jing
sudo systemctl start docker
sudo systemctl enable docker


clear
echo "===================="
echo " Done! TIME FOR A REBOOT! "
echo "===================="
