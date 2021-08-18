#!/bin/bash

#start config vimrc
echo "start config vimrc"
cp .vimrc ~/
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/abertsch/Menlo-for-Powerline.git
mkdir ~/.fonts
cd Menlo-for-Powerline/
cp "Menlo for Powerline.ttf" ~/.fonts/
fc-cache -vf ~/.fonts
cd ~/.vim/bundle
git clone git://github.com/altercation/vim-colors-solarized.git
vim +PluginInstall +qall


