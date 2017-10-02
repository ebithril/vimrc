set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=$USERPROFILE/.vim/bundle/Vundle.vim
call vundle#begin('$USERPROFILE/.vim/bundle')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-syntastic/syntastic'
call vundle#end()            " required

filetype plugin on
syntax on

set guioptions -=m
set guioptions -=T
set guioptions -=r
set tabstop=4
set noexpandtab
set background=dark
colorscheme solarized

let g:airline_extensions = ['branch', 'tabline']
let g:airline_theme='solarized'
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_theme='dark'
