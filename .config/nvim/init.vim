source $XDG_CONFIG_HOME/nvim/keybind.vim

runtime! ftplugin/man.vim

call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired' 
Plug 'tpope/vim-fugitive' 
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline' 
" Multiple line selection
Plug 'mg979/vim-visual-multi'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
" Autoformat for html, css, js, .etc (mostly web)
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install --production',
  \ 'for': ['javascript', 'typescript', 'javascriptreact', 'typescriptreact', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
call plug#end()

colorscheme gruvbox
set background=dark
set nowrapscan
set hlsearch
set number relativenumber
set splitbelow splitright

set shiftwidth=2
set tabstop=2
set expandtab

set wildmode=longest:full

let g:airline_powerline_fonts = 1
