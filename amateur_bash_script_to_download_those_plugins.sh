#!/bin/bash

# Note : 
# 	This script can only br run debian based machines since `apt` package manager is required

# Update Repo
echo "I will update the repository and install curl wget and git and then add the vimrc to to home directory pls be patient :) ..."
sleep 3
clear
echo "Updating The Repository"
apt update -y
# Install `curl` ;`wget`; ` git`   if not installed
clear
echo "Updated the Repo"
sleep 2
echo "Installing curl wget and git"
sleep 1
apt install curl wget git vim-nox -y
clear
echo "Installed the neccessary tools"
clear
sleep 2
# clone the vimrc from the git repo into the home_dir
rm -rf ~/.vimrc
clear

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

clear
echo "Made the neccessary directories"
sleep 2
clear

echo "Downloading ale"
git clone https://github.com/dense-analysis/ale.git ~/.vim/bundle/ale
clear
echo "Downloaded ale"
sleep 1

clear
echo "Downloading autopairs"
git clone git://github.com/jiangmiao/auto-pairs.git ~/.vim/bundle/auto-pairs
clear
echo "Downloaded autopairs"
sleep 1

clear
echo "Downloading supertab"
git clone https://github.com/ervandew/supertab.git ~/.vim/bundle/supertab
clear
echo "Downloaded supertab"
sleep 1

clear
echo "Downloading vim-airline"
git clone https://github.com/vim-airline/vim-airline.git ~/.vim/bundle/vim-airline
clear
echo "Downloaded vim-airline"
sleep 1

clear
echo "Downloading vim-multiple-cursors"
git clone https://github.com/terryma/vim-multiple-cursors.git  ~/.vim/bundle/vim-multiple-cursors
clear
echo "Downloaded vim-multiple-cursors"
sleep 1

clear
echo "HAve configured ... :)"
