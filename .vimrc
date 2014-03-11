" viとの後方互換モードをOFFにする
set nocompatible

" turn off IME on start
set iminsert=0

" turn off IME on exit from insert mode
"inoremap <silent> <ESC> <ESC>:set iminsert=0<CR>

" バックスペースキーで削除できるものを指定
set backspace=indent,eol,start

" width of tab
set tabstop=2

" width on hitting tab key
set softtabstop=2

" width on autoindent
set shiftwidth=2

" tab to space
set expandtab

" autoindent
set autoindent
set smartindent

" show line numbers
set number
set ruler
set title

" move carret as seen
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

" highlighting / esc esc to clear
set hlsearch
set ignorecase
nnoremap <Esc><Esc> :noh<CR>

" highlighting pair brankets
set wrapscan

" colorscheme
colorscheme desert

