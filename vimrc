set encoding=utf-8
set nu
set mouse=a

execute pathogen#infect()
syntax on
filetype plugin indent on

map <tab> :tabnext<cr>
map <s-tab> :tabprevious<cr>

" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1
let g:ale_floating_window_border = repeat([''], 6)
set completeopt=menu,menuone,popup,noselect,noinsert
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

" simple vimrc for me with pathogen as plugin manager
" PLugins ::
" 	ale
" 	auto-pairs
" 	vim-airline
" 	ale
" 	auto-pairs
" 	preview-markdown.vim
" 	supertab
" 	vim-airline
" 	vim-multiple-cursors

" Kept it simple once you start to play with it it'll never end[]
