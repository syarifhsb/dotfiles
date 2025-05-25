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
" set wildmode=longest

" Column besides line number
set signcolumn=yes

" Prettier
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

let g:ft_man_open_mode = 'vert'
let g:markdown_recommended_style = 0 " avoid markdown ftplugin set tabs to 4 spaces

" Prisma
autocmd BufWritePost schema.prisma silent! !bun prisma format
