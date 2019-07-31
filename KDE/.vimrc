syntax enable
set number
set nowrap
set mouse=a
set backspace=indent,eol,start
set showcmd
set cursorline
set noswapfile
set ruler
set display=lastline
set pumheight=10
set showmatch
set matchtime=2
set encoding=utf-8
set fileencoding=utf-8
set vb t_vb=
set fileformats=unix,dos,mac
set ambiwidth=double
set wildmenu
set history=100

""" Search Setting
set hlsearch
set ignorecase
set smartcase
set incsearch

""" Indent Setting
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smartindent

""" Normal Mode
nnoremap Y y$
nnoremap ss :split<CR>
nnoremap vs :vsplit<CR>
nnoremap sj <C-w>j
nnoremap sh <C-w>h
nnoremap sl <C-w>l
nnoremap sk <C-w>k
nnoremap wq :wq<CR>
nnoremap qq :q!<CR>
nnoremap W :w<CR>
nnoremap <C-o> :e 
nnoremap <C-f> /
nnoremap <C-r> :%s///g<LEFT><LEFT><LEFT>
nnoremap ; :

""" Insert Mode
inoremap <C-d> $
inoremap <C-b> \
inoremap JK <Esc>
inoremap jk <Esc>
inoremap <silent> <C-a> <Esc>^<Insert>
inoremap <silent> <C-e> <Esc>$<Insert><Right>
inoremap <C-f> <ESC>/
inoremap <C-r> <ESC>:%s///g<LEFT><LEFT><LEFT>

""" ColorScheme
colorscheme hybrid
set t_Co=256
set background=dark

""" Keep Cursor
augroup vimrcEx
  au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") | 
  \ exe "normal g`\"" | endif
augroup END

""" etc...
augroup fileTypeTabSetting
  autocmd!
  autocmd BufNewFile,BufRead Makefile setlocal noexpandtab nosmartindent
  autocmd BufNewFile,BufRead GNUMakefile setlocal noexpandtab nosmartindent
augroup END
