call plug#begin()

  Plug 'scrooloose/nerdtree'
  Plug 'scrooloose/syntastic'
  Plug 'flazz/vim-colorschemes'
  Plug 'tyrannicaltoucan/vim-quantum' 

call plug#end()


"for color
set term=xterm-256color
syntax on
set encoding=utf8

"number 
set number

set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

inoremap {<cr> {<cr>}<c-o><s-o>
inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap ' ''<LEFT>
inoremap " ""<LEFT>
inoremap { {}<LEFT>
imap ii <Esc>
imap <F2> <Esc>:w<CR>i
nmap <F2> :w<CR>

set background=dark
set termguicolors
let g:quantum_black=1
colorscheme quantum
