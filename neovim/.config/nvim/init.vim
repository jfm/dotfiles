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
colorscheme solarized

"Airline
let g:airline#extensions#tabline#enabled = 1
let g:Powerline_symbols='unicode'
let g:airline_powerline_fonts = 1
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'

"YCM
let g:ycm_python_binary_path = '/usr/bin/python3'
let g:ycm_server_python_interpreter = 'python2'
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_min_num_of_chars_for_completion=5
let g:ycm_add_preview_to_completeopt = 1
set completeopt-=preview

"Mappings
:nmap <c-s> :w<CR>
:imap <c-s> <Esc>:w<CR>a
nnoremap <F7> :bp<CR>
nnoremap <F8> :bn<CR>

"AutoCommands
au BufWinEnter * set number
au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null

au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
