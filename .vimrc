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
Plugin 'leafgarland/typescript-vim'
call vundle#end()            " required

filetype plugin on
syntax on

" remove scrollbars and other unecessary shit
set guioptions -=m
set guioptions -=T
set guioptions -=r
set guioptions -=L
set colorcolumn=100

" Use dark solarizes as the theme
set background=dark
colorscheme solarized

" Tabs are superior
set tabstop=4
set noexpandtab
set shiftwidth=4

" setup airline with solarized theme and showing basic git stuff
let g:airline_extensions = ['branch', 'tabline']
let g:airline_theme='solarized'
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_theme='dark'

" Setup rainbow braces to do their magic in making all code tons more readable
let g:rbpt_loadcmd_toggle = 0

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
au Syntax * RainbowParenthesesLoadChevrons

" Keymaps
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Disable all error bells
set noeb vb t_vb=
autocmd GUIEnter * set vb t_vb=

