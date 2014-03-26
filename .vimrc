" --------------------------------------------------------------------
" 基本設定
" --------------------------------------------------------------------
" viとの後方互換モードをOFFにする
set nocompatible

" 起動時にIMEをオフ
set iminsert=0

" --------------------------------------------------------------------
" 編集系
" --------------------------------------------------------------------
" タブやインデント幅は2SP
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" autoindent
set autoindent
set smartindent

" --------------------------------------------------------------------
" 変換系
" --------------------------------------------------------------------
command EUC e ++enc=euc-jp
command UTF8 e ++enc=utf-8

" --------------------------------------------------------------------
" 表示系
" --------------------------------------------------------------------
" colorscheme
colorscheme desert

" 行番号表示
set number
set ruler

" タイトル表示
set title

" deleteキーで前の行に戻れるように
set backspace=indent,eol,start

" --------------------------------------------------------------------
" カーソル移動系
" --------------------------------------------------------------------
" 行が変わっても見た目通りにカーソルを動かす
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk
nnoremap <Down> gj
nnoremap <Up> gk

" 左右のカーソル移動で行間移動可能にする
set whichwrap=b,s,<,>,[,]

" --------------------------------------------------------------------
" 検索系
" --------------------------------------------------------------------
" ヒットした部分を画面中央にもってくる
" http://qiita.com/m-yamashita/items/28ce6f90b1d3fdc2eb24
nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz

" escの二度押しで検索ハイライトをクリア
set hlsearch
set ignorecase
nnoremap <Esc><Esc> :noh<CR>

" 対になるカッコをハイライト
set wrapscan

