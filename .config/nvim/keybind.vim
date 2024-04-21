let mapleader=" "

" Navigating window
nnoremap <leader>h <C-W>h
nnoremap <leader>j <C-W>j
nnoremap <leader>k <C-W>k
nnoremap <leader>l <C-W>l

" Word Wrapping
nnoremap <leader>wr :set wrap!<C-M>

" Opening vimrc
nnoremap <leader>vc :e ${XDG_CONFIG_HOME}/nvim/init.vim<C-M>

" Save file
nnoremap <leader>sv :w<C-M>

" Zoom in/out window
nnoremap Zz <C-W>\|<C-W>_
nnoremap Zo <C-W>=

" Capital letter for command until the end of line instead of entire line

" Add space line
nnoremap <C-N> o<ESC>
nnoremap <C-P> O<ESC>

" Replace all is aliased to S.
nnoremap S :%s//g<Left><Left>
