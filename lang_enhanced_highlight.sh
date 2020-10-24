#!/bin/bash

mkdir -p ~/.vim/after/syntax/
cp ./syntax/cpp.vim ~/.vim/after/syntax/

mkdir -p ~/.vim/{syntax,indent,ftdetect,ftplugin}
cp ./syntax/kotlin.vim ~/.vim/syntax/kotlin.vim
cp ./indent/kotlin.vim ~/.vim/indent/kotlin.vim
cp ./ftdetect/kotlin.vim ~/.vim/ftdetect/kotlin.vim
cp ./ftplugin/kotlin.vim ~/.vim/ftplugin/kotlin.vim
