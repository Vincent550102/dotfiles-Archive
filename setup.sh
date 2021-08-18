#!/bin/bash

#start config vimrc
cp .vimrc ~/
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/abertsch/Menlo-for-Powerline.git
mkdir ~/.fonts
cp Menlo-for-Powerline/"Menlo for Powerline.ttf" ~/.fonts/
fc-cache -vf ~/.fonts
git clone git://github.com/altercation/vim-colors-solarized.git
cp vim-colors-solarized ~/.vim/bundle
vim +PluginInstall +qall
rm -rf Menlo-for-Powerline
rm -rf vim-colors-solarized

