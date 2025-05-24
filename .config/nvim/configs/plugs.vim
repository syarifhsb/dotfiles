call plug#begin()
" Junegunn's
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" Tree-sitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Plug 'nvim-treesitter/playground'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }

" File Explorer
Plug 'preservim/nerdtree'

" Colorscheme
Plug 'morhetz/gruvbox'

" Tpope's
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired' 
Plug 'tpope/vim-fugitive' 
Plug 'vim-airline/vim-airline' 
" Multiple line selection
Plug 'mg979/vim-visual-multi'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
" Autoformat for html, css, js, .etc (mostly web)
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install --production',
  \ 'for': ['javascript', 'typescript', 'javascriptreact', 'typescriptreact', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
call plug#end()

