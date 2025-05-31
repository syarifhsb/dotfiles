call plug#begin()
" Junegunn's
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" Tree-sitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Plug 'nvim-treesitter/playground' " For debugging and/or developing

" LSP Config
Plug 'neovim/nvim-lspconfig', { 'tag': 'v2.1.0' }
" Mason
Plug 'mason-org/mason.nvim'
Plug 'mason-org/mason-lspconfig.nvim'

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

" Syntax highlighting
Plug 'prisma/vim-prisma' 

call plug#end()

