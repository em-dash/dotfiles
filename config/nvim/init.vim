" PLUGINS

" autoinstall plugin manager
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(stdpath('data') . '/user_plugins')

let g:fcitx5_remote='fcitx5-remote'

" languages
Plug 'https://github.com/tikhomirov/vim-glsl'
Plug 'https://github.com/alaviss/nim.nvim'
Plug 'https://github.com/chrisbra/csv.vim'
Plug 'https://github.com/preservim/vim-markdown'
Plug 'https://github.com/lervag/vimtex'
Plug 'https://github.com/ziglang/zig.vim' " more up to date than local files

" editing tools
Plug 'https://github.com/tomtom/tcomment_vim'
Plug 'https://github.com/editorconfig/editorconfig-vim'
Plug 'https://github.com/lukas-reineke/indent-blankline.nvim'
Plug 'https://github.com/lilydjwg/fcitx.vim'
" Plug 'https://github.com/tpope/vim-surround'

" dependencies
Plug 'https://github.com/godlygeek/tabular'

" workflow
Plug 'https://github.com/nvim-neorg/neorg'

call plug#end()

let g:zig_fmt_autosave=0
let g:vim_markdown_folding_disabled=1
let g:csv_default_delim=','

let g:vimtex_view_method='zathura'
let g:vimtex_mappings_enabled=0

hi IblIndent ctermfg=233

" TERMINAL
augroup term
    autocmd TermOpen * setlocal nonumber
    autocmd TermOpen * setlocal norelativenumber
augroup end

" DISPLAY
colorscheme salt
set cursorline

set list
autocmd InsertEnter * set listchars=tab:>\ ,nbsp:_,precedes:◂,extends:▸
autocmd InsertLeave * set listchars=tab:>\ ,nbsp:_,precedes:◂,extends:▸,trail:_
set showbreak=⤷\ \ \ \ 

lua require "ibl".setup()

" INTERFACE
set ignorecase
set smartcase


" FUNCTIONS
function! SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc


" FILETYPE
filetype plugin indent on
" default settings
set nosmartindent
set autoindent
set textwidth=0
set colorcolumn=+1
set tabstop=4
set shiftwidth=4
set expandtab
set nowrap


" MAPPINGS
" space
noremap <space>w :w<return>
noremap <space>e :e<space>
noremap <space>q :q<return>

" space m - manuals, tags, and keywords
noremap <space>mk K
noremap <space>mm :Man<space>

" tabs
noremap <space>tr :tabnew<bar>term<return>
noremap <space>tn :tabnew<space>
noremap <space>td :tabnew<space>%<return>
noremap <space>h gT
noremap <space>i gt
noremap <space>H :tabm -1<return>
noremap <space>I :tabm +1<return>

" goto definition in new tab
noremap <space><C-]> <C-w><C-]><C-w>T

" space d - display
noremap <space>dn :set<space>invnumber<return>
noremap <space>dw :set<space>invwrap<return>
noremap <space>dr :set<space>invrelativenumber<return>

" space c - compiling, etc
noremap <space>cc :make<return>

nnoremap U <c-r>
nnoremap <F1> <nop>

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
set relativenumber
set number

