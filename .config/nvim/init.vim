
source ${XDG_CONFIG_HOME}/nvim/keybind.vim

runtime! ftplugin/man.vim

call plug#begin()
Plug 'morhetz/gruvbox'
Plug '~/.fzf'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
call plug#end()

colorscheme gruvbox
set background=dark
set hlsearch
set number relativenumber
set splitbelow splitright

set shiftwidth=2
set tabstop=2
set expandtab

set wildmode=longest:full
