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
set undodir=~/.local/share/nvim/undodir
set undofile
"set wildoptions=pum
"set pumblend=20

"Plugins
call plug#begin('~/.local/share/nvim/plugged')
" Pretty Status Lines
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Completion
Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-jedi'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" Colorscheme
Plug 'arcticicestudio/nord-vim'
" Pretty parenthesis
Plug 'luochen1990/rainbow'
" Terminal
Plug 'https://gitlab.com/Lenovsky/nuake.git'
" File handling
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Python
Plug 'numirias/semshi'
Plug 'w0rp/ale'
Plug 'ambv/black'
" HTML
Plug 'jonsmithers/vim-html-template-literals'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'alvan/vim-closetag'
call plug#end()

colorscheme nord

"Airline
let g:airline#extensions#tabline#enabled = 1
let g:Powerline_symbols='unicode'
let g:airline_theme='nord'

" Deoplete
let g:deoplete#enable_at_startup = 1

" Syntastic
let g:syntastic_python_checkers = ['python']

"Rainbow Parentheses
let g:rainbow_active = 1

" Ultisnips
let g:UltiSnipsExpandTrigger="<c-v>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" HTML
let g:closetag_filenames = '*.html,*.js'
let g:html_indent_style1 = "inc"

" Black
autocmd BufWritePre *.py execute ':Black'

" FZF
let $FZF_DEFAULT_COMMAND = 'ag --ignore .git -g ""'
command! -bang -nargs=? -complete=dir HFiles
  \ call fzf#vim#files(<q-args>, {'source': 'ag --hidden --ignore .git -g ""'}, <bang>0)
map <M-1> :Files<CR>
map <M-2> :HFiles<CR>

" Nuake
let g:nuake_position = 'bottom'
let g:nuake_per_tab = 1
nnoremap <F12> :Nuake<CR>
inoremap <F12> <C-\><C-n>:Nuake<CR>
tnoremap <F12> <C-\><C-n>:Nuake<CR>

"Mappings
:nmap <c-s> :w<CR>
:imap <c-s> <Esc>:w<CR>a
:nmap <F28> :bd<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <F7> :bp<CR>
nnoremap <F8> :bn<CR>
nnoremap <F9> :%!jq '.'
" F2 Sets Working Directory to current. Ctrl+F2 sets it to home directory
nnoremap <F2> :lcd %:p:h<CR>
nnoremap <F26> :lcd ~<CR>

"AutoCommands
au BufWinEnter * set number
au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null
autocmd FileType python setlocal completeopt-=preview
