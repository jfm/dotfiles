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

"Plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'davidhalter/jedi-vim'
call plug#end()

"Airline
let g:airline#extensions#tabline#enabled = 1
let g:Powerline_symbols='unicode'
let g:airline_powerline_fonts = 1
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'

"Jedi
let g:jedi#use_splits_not_buffers = "bottom"
let g:jedi#show_call_signatures = "1"

"Mappings
:nmap <c-s> :w<CR>
:imap <c-s> <Esc>:w<CR>a
nnoremap <F7> :bp<CR>
nnoremap <F8> :bn<CR>

"AutoCommands
au BufWinEnter * set number
au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null
autocmd FileType python setlocal completeopt-=preview
