" release autogroup in MtAutoCmd
augroup MyAutoCmd
  autocmd!
augroup END

""" Main Setting
syntax enable
set mouse=a
set showcmd
set cursorline
set ruler
set display=lastline
set pumheight=10
set encoding=utf-8
set fileencoding=utf-8
set fileformats=unix,dos,mac
set ambiwidth=double
set wildmenu
set history=100
set vb t_vb=
set novisualbell

""" Edit Setting
set shiftround  " <, >でインデントの際にshiftwidthの倍数に丸める
set infercase   " 補完時に大文字小文字を区別しない
set virtualedit=all " 文字がない場所でもカーソルを動けるようにする
set hidden
set switchbuf=useopen
set showmatch   " カッコ対応をハイライト表示
set matchtime=2 " 
set matchpairs& matchpairs==<:>  " カッコ対応の対象に<>を追加
set backspace=indent,eol,start   " BSですべてを消せるように
set nowritebackup  " バックアップファイルを作らない
set noswapfile     " スワップファイルを作らない
set nobackup

""" Visual Setting
set list      " 不可視文字の可視化
set number    " 行数の表示
set nowrap    " 折り返さない
set textwidth=0   " 自動改行の禁止
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%,eol:↲  " 不可視文字の変更

""" Search Setting
set hlsearch    " 検索をハイライト表示
set ignorecase  " 大文字小文字の区別をしない
set smartcase   " 大文字がクエリに含まれるなら区別する
set incsearch   " インクリメンタルサーチ

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
nnoremap ww :w<CR>
nnoremap <C-o> :e 
nnoremap <C-f> /
nnoremap <C-r> :%s///g<LEFT><LEFT><LEFT>
nnoremap ; :
nnoremap <silent> <Esc><Esc> :nohlserch<CR>
nnoremap j gj
nnoremap k gk

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
