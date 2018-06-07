syntax on

set clipboard=unnamed
set smartindent
set shiftwidth=2
set tabstop=2
set expandtab
set number
set autoread

let g:powerline_pycmd="py3"
let NERDTreeShowHidden=1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

filetype indent on

:nmap <c-s> :w<CR>
:imap <c-s> <Esc>:w<CR>a
nnoremap <F7> :tabp<CR>
nnoremap <F8> :tabn<CR>
map <C-n> :NERDTreeToggle<CR>

au BufWinEnter * set number
