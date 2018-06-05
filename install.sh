#!/usr/bin/sh

mkdir -p ~/.vim/syntax/
mkdir -p ~/.vim/ftdetect/ 

curl -L "https://github.com/jacqueswww/vim-vyper/raw/master/syntax/vyper.vim" -o ~/.vim/syntax/vyper.vim
curl -L "https://github.com/jacqueswww/vim-vyper/raw/master/ftdetect/vyper.vim" -o ~/.vim/ftdetect/vyper.vim

