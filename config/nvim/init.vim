
" plugins
call plug#begin(stdpath('data') . '/user_plugins')

" themes
" Plug 'https://github.com/fnune/base16-vim'


" languages
Plug 'https://github.com/tikhomirov/vim-glsl', { 'for': 'glsl' }
Plug 'https://github.com/ziglang/zig.vim', { 'for': 'zig' }

" Plug 'https://github.com/liuchengxu/vim-which-key'  " set this up i guess
Plug 'https://github.com/vim-scripts/scratch.vim'

Plug 'https://github.com/tpope/vim-commentary'

call plug#end()


" colors
" colorscheme base16-gruvbox-dark-pale
" colorscheme zellner


let g:zig_fmt_autosave = 0

filetype plugin indent on
" maybe i just fucking have to write an indentexpr because all of this is
" horrible argh

" smartindent is evil for various languages that aren't C because it fucks up
" hashtags at the start of lines
set nosmartindent
set autoindent
set textwidth=0
set colorcolumn=+1
set tabstop=4
set shiftwidth=4
set expandtab
" override this in filetypes that need it, eg plain text, TeX
set nowrap
" TODO make wrapping look nicer and more clear


" mappings
" TODO why does gt work like that?  with no number it moves relative to the
" current tab, with a number it moves relative to the first tab.

" space
noremap <space>w :w<return>

" space m - manuals, tags, and keywords
noremap <space>mk K
noremap <space>mm :Man<space>

" space t - tabs
noremap <space>ta :tabnew<return>
noremap <space>tr :tabnew<bar>term<return>
noremap <space>ts gT
noremap <space>tt gt
noremap <space>tS :tabm -1<return>
noremap <space>tT :tabm +1<return>

" space e - edit
" make word i just typed uppercase
" noremap <space>eu <Esc>gUkw`]a

" space d - display
noremap <space>dn :set<space>invnumber<return>
noremap <space>dw :set<space>invwrap<return>

nnoremap U <c-r>

noremap n j
noremap N J
noremap j n
noremap J N

noremap e k
noremap E <nop>
noremap l e
noremap L E
noremap gl ge
noremap gL gE

noremap i l
noremap I L
noremap k i
noremap K I

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
noremap <C-w>N <C-w>J
noremap <C-w>E <C-w>K
noremap <C-w>I <C-w>L
noremap <C-w>J <nop>
noremap <C-w>K <nop>
noremap <C-w>L <nop>

tnoremap <C-\> <C-\><C-n>


set nohlsearch
" set number


" jesus lord indenting sucks
