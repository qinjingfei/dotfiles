#!/bin/bash


# update
sudo pacman -Syu --noconfirm

#install software
sudo pacman -S --noconfirm
               git curl tmux fish screenfetch sl cowsay cmatrix \
               npm python-pip python2-pip vim htop glances mpv  \
               vlc mosh ruby docker docker-compose dropbox nmap \
               mps-youtube you-get aria2 rofi                   \

sudo systemctl enable sshd.service
sudo systemctl start sshd.service

git config --global user.name "Jingfei Qin"
git config --global user.email "qinjingfei1@gmail.com"

#run docker without root
sudo usermod -aG docker jing
sudo systemctl start docker
sudo systemctl enable docker

sudo pip3 install neovim beautifulsoup4 lxml requests loads mps-youtube youtube_dl
sudo pip install --upgrade pip
sudo pip2 install --upgrade pip

sudo npm install -g speed-test gtop browser-sync vue-cli

clear
echo "===================="
echo " Done! TIME FOR A REBOOT! "
echo "===================="
