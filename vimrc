set encoding=utf-8
set nu
set mouse=a

execute pathogen#infect()
syntax on
filetype plugin indent on

" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1
let g:ale_floating_window_border = repeat([''], 6)
set completeopt=menu,menuone,popup,noselect,noinsert

" simple vimrc for me with pathogen as plugin manager
" PLugins ::
" 	ale
" 	auto-pairs
" 	vim-airline
" Kept it simple once you start to play with it it'll never end[]
