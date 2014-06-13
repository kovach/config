set nocompatible
set showcmd   " display incomplete commands
set autoindent
set hidden
set expandtab
set ignorecase
set wildmode=list:longest,full
set tabstop=2
set shiftwidth=2
set hlsearch
syntax on

filetype plugin indent on

nnoremap <F2> :set background=dark<CR>
nnoremap <F3> :set background=light<CR>
nnoremap <C-l> :redraw<CR>:buffers<CR>:buffer<Space>
nnoremap <esc><esc> :noh<return>
nnoremap <esc>d :b #<bar>bd #<CR>

imap <C-f> function() {<CR>}<esc>k$hhi
imap <C-l> console.log();<esc>hi

call pathogen#infect()
colorscheme solarized
set background=dark
