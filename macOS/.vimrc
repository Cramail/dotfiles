:set number
:set title
:set mouse=a
:set nowrap
:set showcmd
:set noswapfile
:set ruler
:set cursorline
:set backspace=indent,eol,start
:set pumheight=10
:set display=lastline
:set showmatch
:set matchtime=2
:set encoding=utf-8
:set fileencoding=utf-8
:set vb t_vb=
:set ambiwidth=double
:set wildmenu
:set history=100

""" Search
:set hlsearch
:set ignorecase
:set smartcase
:set incsearch

""" Indent
:set autoindent
:set expandtab
:set tabstop=2
:set shiftwidth=2
:set softtabstop=2
:set smartindent

""" Syntax Hilight
:colorscheme molokai
:syntax enable

nnoremap ss :split<CR>
nnoremap vs :vsplit<CR>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sh <C-w>h
nnoremap sl <C-w>l
nnoremap wq :wq<CR>
nnoremap qq :q!<CR>
nnoremap ; :

inoremap JK <Esc>
inoremap jk <Esc>
inoremap <silent> <C-e> <ESC>^<INSERT>
inoremap <silent> <C-a> <ESC>$<INSERT><RIGHT>
