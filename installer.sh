#!/bin/bash
printf "vim='nvim'
alias omn='nvim ~/.config/nvim/init.vim'
alias omb='nvim ~/.bashrc; source ~/.bashrc'" >> ~/.bashrc

time ( bash $(pwd)/requirements_installer_linux.sh ; $(pwd)/neovim_setter.sh)
