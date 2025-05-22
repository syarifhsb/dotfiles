let mapleader=" "

" Navigating window
nnoremap <leader>h <C-W>h
nnoremap <leader>j <C-W>j
nnoremap <leader>k <C-W>k
nnoremap <leader>l <C-W>l

nnoremap <C-p>  :Files<CR>
nnoremap <leader>g  :Rg<CR>

" Word Wrapping
nnoremap <leader>wr :set wrap!<C-M>

" Opening vimrc
nnoremap <leader>iv :e ${XDG_CONFIG_HOME}/nvim/init.vim<C-M>
nnoremap <leader>vc :vs ${XDG_CONFIG_HOME}/vim/vimrc<C-M>

" Save file
nnoremap <leader>sv :w<C-M>

" Zoom in/out window
nnoremap Zz <C-W>\|<C-W>_
nnoremap Zo <C-W>=

