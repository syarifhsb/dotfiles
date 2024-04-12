
source ${XDG_CONFIG_HOME}/nvim/keybind.vim

runtime! ftplugin/man.vim

call plug#begin()
Plug 'morhetz/gruvbox'
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

" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" " - Popup window (center of the current window)
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.7, 'relative': v:true } }

" Enable per-command history
" - History files will be stored in the specified directory
" - When set, CTRL-N and CTRL-P will be bound to 'next-history' and
"   'previous-history' instead of 'down' and 'up'.
let g:fzf_history_dir = '~/.local/share/fzf-history'

command! -bang -complete=dir -nargs=? LS
    \ call fzf#run(fzf#wrap('ls', {'source': 'ls', 'dir': <q-args>}, <bang>0))
command! -bang -complete=dir -nargs=? LA
    \ call fzf#run(fzf#wrap('ls', {'source': 'ls -a', 'dir': <q-args>}, <bang>0))
command! -bang -complete=dir -nargs=? FA
    \ call fzf#run(fzf#wrap('ls', {'source': 'find .', 'dir': <q-args>}, <bang>0))
