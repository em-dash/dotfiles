
" plugins
call plug#begin(stdpath('data') . '/user_plugins')

Plug 'https://github.com/fnune/base16-vim'

call plug#end()


filetype plugin indent on

" colors
colorscheme base16-gruvbox-dark-pale

" maybe i just fucking have to write an indentexpr because all of this is
" horrible argh

" smartindent is evil for any language that isn't C because it fucks up
" hashtags at the start of lines
set nosmartindent
set autoindent
set textwidth=0
set colorcolumn=+0

" mappings
noremap <space>m K

nnoremap U <c-r>

noremap n j
noremap N J
noremap j n
noremap J N

noremap e k
noremap E <nop>
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


" jesus lord indenting sucks
