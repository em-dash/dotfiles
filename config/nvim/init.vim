
" plugins
call plug#begin(stdpath('data') . '/user_plugins')

Plug 'https://github.com/fnune/base16-vim'

call plug#end()


noremap n j
noremap N J
noremap j n
noremap J N

noremap e k
noremap E K
noremap l e
noremap L E

noremap i l
noremap I L
nnoremap k i
nnoremap K I

noremap gn gj
noremap ge gk
noremap gj gn
noremap gk <nop>

noremap gi $
noremap gh 0

noremap <C-w>n <C-w>j
noremap <C-w>e <C-w>k
noremap <C-w>i <C-w>l
noremap <C-w>j <nop>
noremap <C-w>k <nop>
noremap <C-w>l <nop>



set nohlsearch
set number



