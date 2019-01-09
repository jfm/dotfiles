syntax on
filetype indent on

set encoding=utf-8
set clipboard=unnamed
set clipboard+=unnamedplus
set smartindent
set shiftwidth=2
set tabstop=2
set expandtab
set number
set autoread
set hidden
set background=dark
set rtp^=/usr/share/vim/vimfiles/

"Plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Valloric/YouCompleteMe'
Plug 'nvie/vim-flake8'
Plug 'vim-syntastic/syntastic'
Plug 'luochen1990/rainbow'
Plug 'numirias/semshi'
Plug 'arcticicestudio/nord-vim'
call plug#end()

colorscheme nord

"Airline
let g:airline#extensions#tabline#enabled = 1
let g:Powerline_symbols='unicode'
"let g:airline_powerline_fonts = 1
let g:airline_theme='nord'

"YCM
let g:ycm_server_python_interpreter = 'python3'
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_min_num_of_chars_for_completion=5
let g:ycm_add_preview_to_completeopt = 1

"
let g:syntastic_python_checkers = ['python']

"Flake8
autocmd FileType python map <buffer> <F6> :call Flake8()<CR>
let g:flake8_show_in_gutter=1

"Rainbow Parentheses
let g:rainbow_active = 1

"Mappings
:nmap <c-s> :w<CR>
:imap <c-s> <Esc>:w<CR>a
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <F7> :bp<CR>
nnoremap <F8> :bn<CR>
nnoremap <F9> :%!jq '.'

"AutoCommands
au BufWinEnter * set number
au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null
autocmd FileType python setlocal completeopt-=preview

" add yaml stuffs
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
