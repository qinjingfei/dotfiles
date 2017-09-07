#!/bin/bash

sudo add-apt-repository -y "deb http://archive.canonical.com/ $(lsb_release -sc) partner"
sudo add-apt-repository -y "deb http://dl.google.com/linux/chrome/deb/ stable main"

sudo add-apt-repository ppa:webupd8team/tor-browser
sudo add-apt-repository ppa:jonathonf/vim

sudo apt update -y && sudo apt upgrade -y
sudo apt install -y \
	git curl tmux fish screenfetch sl cowsay cmatrix npm python-pip python3-pip  vim\
	ruby build-essential mpv expect fortune-mod vlc nodejs-legacy htop glances mosh \
	tor-browser  nmap\
  google-chrome-stable \
	docker docker-compose docker.io     \

sudo npm install -g speed-test gtop browser-sync

sudo pip install neovim
sudo pip3 install neovim beautifulsoup4 lxml requests loads mps-youtube youtube_dl
sudo pip install --upgrade pip
sudo pip3 install --upgrade pip

git config --global user.name "Jingfei Qin"
git config --global user.email "qinjingfei1@gmail.com"

#neovim
#sudo add-apt-repository -y ppa:neovim-ppa/stable
#sudo apt-get update
#sudo apt-get install neovim

#run docker without root
sudo usermod -aG docker jing
sudo systemctl start docker
sudo systemctl enable docker

#curl -L https://get.oh-my.fish | fish
#omf install sushi

#curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher
#fisher z

#Spf13 vim
#curl http://j.mp/spf13-vim3 -L -o - | sh


clear
echo "===================="
echo " Done! TIME FOR A REBOOT! "
echo "===================="
