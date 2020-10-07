#!/bin/bash

mkdir -p ~/.vim/pack/themes/start/
ln -s `pwd`/bluewery/ ~/.vim/pack/themes/start/bluewery
echo "please, add 'packadd! bluewery' and 'colorscheme bluewery' or 'colorscheme bluewery-light' to ~/.vimrc."
