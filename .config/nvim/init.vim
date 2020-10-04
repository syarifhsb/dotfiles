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

augroup netrw_mapping
  autocmd!
  autocmd filetype netrw call NetrwMapping()
augroup END

function! NetrwMapping()
  nnoremap <buffer> <c-l> :wincmd l<cr>
endfunction

" Plugins
" Check whether plug-vim is readable. Download if not
if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
        echo "Downloading junegunn/vim-plug to manage plugins..."
        silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
        silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim 
        autocmd VimEnter * PlugInstall 
endif

" Initialize plugin system
call plug#begin(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/plugged"'))
" Nord theme
Plug 'arcticicestudio/nord-vim'
" Workaroud to sudo on neovim (issue #12103)
Plug 'lambdalisue/suda.vim'
call plug#end()
