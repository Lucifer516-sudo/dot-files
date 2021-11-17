#!/bin/bash
apt install sudo -y
sudo apt update -y
sudo apt install git -y 
sudo apt install nodejs --no-install-recommends
sudo apt install npm --no-install-recommends 
sudo apt install neovim
apt install wget curl -y awesome tigervnc-standalone-server --no-install-recommends

mkdir -p ~/.config/nvim/autoload ~/.config/nvim/bundle && \
curl -LSso ~/.config/nvim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
#rm -rf ~/.bashrc
#wget https://raw.githubusercontent.com/Lucifer516-sudo/dot-files/development/bashrc -O ~/.bashrc
cd ~/.config/nvim/bundle/
git clone -b release https://github.com/neoclide/coc.nvim.git
git clone https://github.com/preservim/nerdtree.git
git clone git://github.com/jiangmiao/auto-pairs.git 
git clone https://github.com/ervandew/supertab.git 
git clone https://github.com/vim-airline/vim-airline.git 
git clone https://github.com/terryma/vim-multiple-cursors.git

printf 'set encoding=utf-8 \nset nu\nset mouse=a\nexecute pathogen#infect()
\nsyntax on\nfiletype plugin indent on\n\nmap <tab> :tabnext<cr>\nmap <s-tab> :tabprevious<cr>\n\n" Set this. Airline will handle the rest.\nlet g:airline#extensions#ale#enabled = 1\nlet g:ale_floating_window_border = repeat([], 6)\nset completeopt=menu,menuone,popup,noselect,noinsert\nlet g:SuperTabDefaultCompletionType = "<c-x><c-o>"\n\n" simple vimrc for me with pathogen as plugin manager\n" PLugins ::\n" 	ale\n" 	auto-pairs\n" 	vim-airline\n" 	ale\n" 	auto-pairs\n" 	preview-markdown.vim\n" 	supertab\n" 	vim-airline\n" 	vim-multiple-cursors\n\n" Kept it simple once you start to play with it itll never end[]' >> ~/.config/nvim/init.vim

sudo apt clean -y
sudo apt autoremove -y
echo "Please type CocInstall coc-pyright' for python3 completions"
nvim
