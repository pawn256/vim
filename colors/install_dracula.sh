#!/bin/bash

mkdir -p ~/.vim/pack/themes/start/
ln -s `pwd`/dracula/ ~/.vim/pack/themes/start/dracula
echo "please, add 'packadd! dracula' and 'colorscheme dracula' to ~/.vimrc."
