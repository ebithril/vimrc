set encoding=utf-8

set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=$USERPROFILE/.vim/bundle/Vundle.vim
call vundle#begin('$USERPROFILE/.vim/bundle')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'soramugi/auto-ctags.vim'

" Looks
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'altercation/vim-colors-solarized'

" Airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Syntax checking plugin
Plugin 'vim-syntastic/syntastic'

" Syntax highlighting plugins
Plugin 'leafgarland/typescript-vim'
call vundle#end()            " required

filetype plugin on
syntax on

" remove scrollbars and other unecessary shit
set guioptions -=m
set guioptions -=T
set guioptions -=r
set guioptions -=L
set colorcolumn=120

" Add some padding
set foldcolumn=10

" Use dark solarizes as the theme
set background=dark
colorscheme solarized

" Tabs are superior
set tabstop=4
set noexpandtab
set shiftwidth=4

" setup ctrlp
set wildignore+=*.pyc

" setup auto_ctags
let g:auto_ctags = 1

" setup airline with solarized theme and showing basic git stuff
let g:airline_theme='solarized'
let g:airline_theme='dark'
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''


" Setup rainbow braces to do their magic in making all code tons more readable
let g:rbpt_loadcmd_toggle = 0

set guifont=Inconsolata\ for\ Powerline:h13:cANSI

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
au Syntax * RainbowParenthesesLoadChevrons

" Keymaps
let mapleader = ","
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

vnoremap . :normal.<CR>

nmap <leader>o :CtrlP<CR>
nmap <leader>s :CtrlPTag<CR>

" Disable all error bells
set noeb vb t_vb=
autocmd GUIEnter * set vb t_vb=

