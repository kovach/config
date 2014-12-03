set nocompatible
set showcmd   " display incomplete commands
set autoindent
set hidden
set expandtab
set incsearch
set ignorecase
set smartcase
set wildmode=list:longest,full
set tabstop=2
set shiftwidth=2
set hlsearch
set ruler
syntax on
set t_Co=16
set backspace=indent,eol,start

filetype plugin indent on

nnoremap <F2> :set background=dark<CR>
nnoremap <F3> :set background=light<CR>
"nnoremap <C-l> :redraw<CR>:buffers<CR>:buffer<Space>
nnoremap <C-l> :CtrlPBuffer<CR>
nnoremap <esc><esc> :noh<return>
nnoremap <esc>d :b #<bar>bd #<CR>

imap <C-f> function() {<CR>}<esc>k$hhi
imap <C-l> console.log();<esc>hi
imap \r →
cmap \r →
nnoremap <C-h> :! browserify main.js -o bundle.js<CR><CR>
nnoremap <C-k> :! <CR>

let g:ctrlp_custom_ignore='node_modules/*'

call pathogen#infect()
colorscheme solarized
set background=light

"Fugitive
set diffopt=vertical
