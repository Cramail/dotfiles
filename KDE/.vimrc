syntax enable
set number
set wrap
set noswapfile
set cursorline
set ambiwidth=double
set hlsearch
set smartcase
set mouse=a
set wildmenu
set ruler

" Color scheme
set t_Co=256
colorscheme slate
set background=dark

" Indent
set tabstop=4
set autoindent
set expandtab
set shiftwidth=2
set smartindent
set softtabstop=2

" =========================
"   Normal Mode
" =========================
" 行末までヤンク
nnoremap Y y$
" ペイン分割
nnoremap ss :split<CR>
nnoremap sv :vsplit<CR>
" ペイン移動
nnoremap sj :<C-w>j
nnoremap sk :<C-w>k
nnoremap sh :<C-w>h
nnoremap sl :<C-w>l
" wqで保存して終了
nnoremap wq :wq<CR>
" qqで保存せず終了
nnoremap qq :q!<CR>
" wwで保存
nnoremap ww :w<CR>
" Ctrl+o でファイルを開く
nnoremap <C-o> :e
" Ctrl+f で検索
nnoremap <C-f> /
" Ctrl+r で置換
nnoremap <C-r> :%s///g<LEFT><LEFT><LEFT>

" =======================
"   Insert Mode
" =======================
" jk, JK で ESC
inoremap jk <ESC>
inoremap JK <ESC>
" Ctrl+a で行頭へ移動, Ctrl+eで行末へ移動
inoremap <silent> <C-a> <ESC>^<INSERT>
inoremap <silent> <C-e> <ESC>$<INSERT><RIGHT>
" Ctrl+f で検索
inoremap <C-f> <ESC>/
" Ctrl+r で置換
inoremap <C-r> <ESC>:%s///g<LEFT><LEFT><LEFT>


