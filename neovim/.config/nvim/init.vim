syntax on
filetype indent on

set encoding=utf-8
set clipboard=unnamed
set smartindent
set shiftwidth=2
set tabstop=2
set expandtab
set number
set autoread
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
let g:ycm_min_num_of_chars_for_completion=10

"Mappings
:nmap <c-s> :w<CR>
:imap <c-s> <Esc>:w<CR>a
nnoremap <F7> :bp<CR>
nnoremap <F8> :bn<CR>

"AutoCommands
au BufWinEnter * set number
au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null
