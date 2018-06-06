syntax on

set clipboard=unnamed
set smartindent
set shiftwidth=2
set tabstop=2
set number
set autoread

let g:powerline_pycmd="py3"

filetype indent on

:nmap <c-s> :w<CR>
:imap <c-s> <Esc>:w<CR>a
nnoremap <F7> :tabp<CR>
nnoremap <F8> :tabn<CR>

au BufWinEnter * set number
