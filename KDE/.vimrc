:syntax enable
:set number
:set wrap
:set noswapfile
:set autoindent
:set expandtab
:set shiftwidth=2
:set softtabstop=2
:set smartindent
:set cursorline
:set ambiwidth=double
:set wildmenu
:set hlsearch
:set smartcase
:set incsearch
:set mouse=a
:set ruler
:set cursorline
:set title
:set showcmd
:set laststatus=2


""" Nomal Mode
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

""" Insert Mode
inoremap <C-d> $
inoremap <C-b> \
inoremap JK <Esc>
inoremap jk <Esc>
inoremap <silent> <C-a> <Esc>^<Insert>
inoremap <silent> <C-e> <Esc>$<Insert><Right>
inoremap <C-f> <ESC>/
inoremap <C-r> <ESC>:%s///g<LEFT><LEFT><LEFT>

""" Color Scheme
set t_Co=256
colorscheme slate
set background=dark
