#!/bin/bash

cp tmux.conf ~/.tmux.conf
chsh -s $(which fish)
wget "https://wallpapersite.com/images/wallpapers/velvet-crowe-3200x1800-hot-anime-girl-hd-6221.jpg"
wget "http://www.wallpapermaiden.com/image/2017/02/16/hatsune-miku-dark-theme-twintails-vocaloid-anime-13403.jpg"
wget "http://i.imgur.com/Xyfz5M4.jpg"
curl -L https://get.oh-my.fish | fish
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher
fisher z
