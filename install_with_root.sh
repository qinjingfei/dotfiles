#!/bin/bash

sudo apt update -y && sudo apt upgrade -y
sudo apt install -y \
	git curl tmux fish screenfetch sl cowsay cmatrix npm python-pip python3-pip  vim\
	ruby build-essential mpv expect fortune-mod vlc nodejs htop glances mosh        \
	nmap aria2 tlp powertop silversearcher-ag  software-properties-common           \
	docker docker-compose docker.io
npm config set registry https://registry.npm.taobao.org
sudo npm install -g speed-test gtop browser-sync vue-cli

sudo pip3 install beautifulsoup4 lxml requests loads
sudo pip install --upgrade pip
sudo pip3 install --upgrade pip3

git config --global user.name "Jingfei Qin"
git config --global user.email "qinjingfei1@gmail.com"
git config --global push.default simple

sudo usermod -aG docker jing
sudo systemctl start docker
sudo systemctl enable docker
sudo docker pull xujinkai/aria2-with-webui

docker run -d \                                                                                                                                                    15:51:03
--name aria2 \
-p 6800:6800 \
-p 80:80 \
-v ~/Downloads/aria2:/data \
-v ~/Documents/dotfiles/aria2.conf:/conf/aria2.conf \
xujinkai/aria2-with-webui
docker stop aria2

sudo tlp start
sudo cp ./startup.sh /usr/bin/
sudo cp ./rc.local /etc/
sudo cp 90-libinput.conf /usr/share/X11/xorg.conf.d/
sudo cp ./daemon.json /etc/docker/daemon.json

chsh -s $(which fish)
#git clone git@github.com:acgotaku/BaiduExporter.git
#sudo add-apt-repository ppa:hzwhuang/ss-qt5
#sudo add-apt-repository ppa:fish-shell/release-2
#ssh-keygen -t rsa -b 4096 -C "qinjingfei1@gmail.com"
#curl -L https://get.oh-my.fish | fish
# curl https://j.mp/spf13-vim3 -L > spf13-vim.sh && sh spf13-vim.sh


clear
echo "===================="
echo " Done! TIME FOR A REBOOT! "
echo "===================="
