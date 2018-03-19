#!/bin/bash

sudo apt update -y && sudo apt upgrade -y
sudo apt install -y \
	git curl tmux fish screenfetch sl cowsay cmatrix npm python-pip python3-pip  vim\
	ruby build-essential mpv expect fortune-mod vlc nodejs htop glances mosh        \
	nmap aria2 tlp powertop silversearcher-ag                                       \
	docker docker-compose docker.io                                                 \

sudo npm install -g speed-test gtop browser-sync vue-cli

sudo pip3 install beautifulsoup4 lxml requests loads mps-youtube youtube_dl
sudo pip install --upgrade pip
sudo pip3 install --upgrade pip3

git config --global user.name "Jingfei Qin"
git config --global user.email "qinjingfei1@gmail.com"
git config --global push.default simple

#run docker without root
sudo usermod -aG docker jing
sudo systemctl start docker
sudo systemctl enable docker
sudo docker pull xujinkai/aria2-with-webui

sudo tlp start
sudo cp ./startup.sh /usr/bin/
sudo cp ./rc.local /etc/


#删除多余的软件，游戏
#sudo apt-get autoremove firefox firefox-locale-en \
#	 		firefox-locale-zh-hans rhythmbox gnome-sudoku \
#	  		gnome-mahjongg gnome-mines transmission-common \
#	   		cheese totem-common aisleriot gedit gnome-online-accounts \
#	    		gnome-calendar simple-scan shotwell shotwell-common thunderbird


# sudo add-apt-repository ppa:snwh/pulp
# sudo apt-get update
# sudo apt-get install paper-icon-theme
# sudo apt-get install paper-cursor-theme
# sudo apt-get install paper-gtk-theme

clear
echo "===================="
echo " Done! TIME FOR A REBOOT! "
echo "===================="
