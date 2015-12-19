set nocompatible
set showcmd   " display incomplete commands
set autoindent
set hidden
set incsearch
set ignorecase
set smartcase
set wildmode=list:longest,full
set smarttab
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set hlsearch
set ruler
syntax on
set t_Co=16
set backspace=indent,eol,start
set tags=./tags;
filetype plugin indent on

nnoremap <F2> :set background=dark<CR>
nnoremap <F3> :set background=light<CR>
nnoremap <C-l> :CtrlPBuffer<CR>
nnoremap <C-n> :CtrlPTag<CR>
nnoremap <esc><esc> :noh<return>
nnoremap <esc>d :b #<bar>bd #<CR>
"nnoremap 0 0:w<CR>
nnoremap <space> :w<CR>

imap <C-f> function() {<CR>}<esc>k$hhi
imap <C-l> console.log();<esc>hi
"nnoremap <C-h> :w<CR>:! browserify js/main.js -o static/bundle.js<CR>
set wildignore+=*/dist/*
set wildignore+=*/node_modules/*

call pathogen#infect()
colorscheme solarized
set background=light

let g:clang_library_path='/Library/Developer/CommandLineTools/usr/lib/libclang.dylib'
let g:clang_complete_auto=0
let g:clang_auto_select=0
let g:clang_close_preview=1

"Fugitive
set diffopt=vertical
set gcr=a:blinkon0

" macvim
set guifont=Monaco:h14
