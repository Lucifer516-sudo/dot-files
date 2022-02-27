#!/bin/bash

echo 'Cloning Requirements From Github.com'

mkdir -p ~/.config/nvim/autoload ~/.config/nvim/bundle && \
curl -LSso ~/.config/nvim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.config/nvim/bundle/
git clone -b release https://github.com/neoclide/coc.nvim.git
git clone https://github.com/preservim/nerdtree.git
git clone git://github.com/jiangmiao/auto-pairs.git
git clone https://github.com/vim-airline/vim-airline.git
git clone https://github.com/terryma/vim-multiple-cursors.git

clear

echo 'Setting Up init.vim'

printf 'set encoding=utf-8 \nset nu\nset mouse=a\nexecute pathogen#infect()                                   \nsyntax on\nfiletype plugin indent on\n\nmap <tab> :tabnext<cr>\nmap <s-tab> :tabprevious<cr>\n\n" Set this. Airline will handle the rest.\nlet g:airline#extensions#ale#enabled = 1\nlet g:ale_floating_window_border = repeat([], 6)\nset completeopt=menu,menuone,popup,noselect,noinsert\nlet g:SuperTabDefaultCompletionType = "<c-x><c-o>"\n\n" simple vimrc for me with pathogen as plugin manager\n" PLugins ::\n"     ale\n"  auto-pairs\n"   vim-airline\n"  ale\n"  auto-pairs\n"   preview-markdown.vim\n"         supertab\n"     vim-airline\n"  vim-multiple-cursors\n\n" Kept it simple once you start to play with it itll never end[]' >> ~/.config/nvim/init.vim
