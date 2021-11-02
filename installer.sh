#!/bin/bash
sudo apt update
sudo apt install git
sudo apt install nodejs --no-install-recommends
sudo apt install npm --no-install-recommends 
sudo apt install vim-nox
sudo apt install wget curl awesome tigervnc-standalone-server --no-install-recommends

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle/
git clone -b release https://github.com/neoclide/coc.nvim.git
git clone https://github.com/preservim/nerdtree.git
git clone git://github.com/jiangmiao/auto-pairs.git 
git clone https://github.com/ervandew/supertab.git 
git clone https://github.com/vim-airline/vim-airline.git 
git clone https://github.com/terryma/vim-multiple-cursors.git

printf 'set encoding=utf-8 \nset nu\nset mouse=a\nexecute pathogen#infect()
\nsyntax on\nfiletype plugin indent on\n\nmap <tab> :tabnext<cr>\nmap <s-tab> :tabprevious<cr>\n\n" Set this. Airline will handle the rest.\nlet g:airline#extensions#ale#enabled = 1\nlet g:ale_floating_window_border = repeat([], 6)\nset completeopt=menu,menuone,popup,noselect,noinsert\nlet g:SuperTabDefaultCompletionType = "<c-x><c-o>"\n\n" simple vimrc for me with pathogen as plugin manager\n" PLugins ::\n" 	ale\n" 	auto-pairs\n" 	vim-airline\n" 	ale\n" 	auto-pairs\n" 	preview-markdown.vim\n" 	supertab\n" 	vim-airline\n" 	vim-multiple-cursors\n\n" Kept it simple once you start to play with it itll never end[]' >> ~/.vimrc

vim 

