runtime! ftplugin/man.vim

colorscheme gruvbox
set background=dark
set nowrapscan
set hlsearch
set number relativenumber
set splitbelow splitright

set shiftwidth=2
set tabstop=2
set expandtab

" set wildmenu
set wildmode=longest:full
lua require'nvim-treesitter.configs'.setup{highlight={enable=true}}
