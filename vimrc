set nocompatible
set showcmd   " display incomplete commands
syntax on
set autoindent
set hidden
set expandtab
set ignorecase
set tabstop=2
set shiftwidth=2
set wildmode=list:longest,full

filetype plugin indent on

nnoremap <F2> :set background=dark<CR>
nnoremap <F3> :set background=light<CR>
nnoremap <C-l> :redraw<CR>:buffers<CR>:buffer<Space>
nnoremap <esc><esc> :noh<return>

call pathogen#infect()
colorscheme solarized
set background=dark
