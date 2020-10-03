" Basic
set relativenumber number
syntax on
set encoding=utf-8
set ic

" New line up and bottom
nmap <C-n>	O<Esc>
nmap <CR>	o<Esc>

" Shortcutting split navigation, saving a keypress:
nmap <C-h>	<C-w>h
nmap <C-j>	<C-w>j
nmap <C-k>	<C-w>k
nmap <C-l>	<C-w>l

call plug#begin('~/.vim/plugged')

" Nord theme
Plug 'arcticicestudio/nord-vim'

" Initialize plugin system
call plug#end()
