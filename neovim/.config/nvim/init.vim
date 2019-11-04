syntax on
filetype indent on

let mapleader="½"

set encoding=utf-8
set clipboard=unnamed
set clipboard+=unnamedplus
set smartindent
set shiftwidth=2
set tabstop=2
set expandtab
set autoread
set hidden
set termguicolors
set background=dark
set rtp^=/usr/share/vim/vimfiles/
set undodir=~/.local/share/nvim/undodir
set undofile
set colorcolumn=80
set foldmethod=syntax
set foldlevelstart=20
set number
set relativenumber

"Plugins
call plug#begin('~/.local/share/nvim/plugged')

" Colorschemes
Plug 'arcticicestudio/nord-vim'

" Pretty Status Lines
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Completion
Plug 'honza/vim-snippets'
Plug 'epilande/vim-react-snippets'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Pretty parenthesis
Plug 'luochen1990/rainbow'

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

" Testing
Plug 'janko/vim-test'

" Editing
Plug 'tpope/vim-surround'

" Git
Plug 'airblade/vim-gitgutter'
call plug#end()


" Colorscheme and Theming
colorscheme nord

"Airline
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline#extensions#tabline#enabled = 0
let g:airline_theme='nord'
let g:airline_symbols.maxlinenr = ''

" BufExplorer
nnoremap <silent> <C-F12> :BufExplorerVerticalSplit<CR>
nnoremap <silent> <F12> :bn<CR>
nnoremap <silent> <F24> :bp<CR>

" CoC
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
inoremap <silent><expr> <c-space> coc#refresh()

" Testing
nmap <silent> <C-F10> :TestNearest<CR>
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> <S-F10> :TestFile<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>

" Syntastic
let g:syntastic_python_checkers = ['python']

"Rainbow Parentheses
let g:rainbow_active = 1

" HTML
let g:closetag_filenames = '*.html,*.js'
let g:html_indent_style1 = "inc"

" Black
autocmd BufWritePre *.py execute ':Black'

" FZF
let $FZF_DEFAULT_COMMAND = 'ag --ignore .git --ignore-dir Customers/RP --ignore *.jar -g ""'
command! -bang -nargs=? -complete=dir HFiles
  \ call fzf#vim#files(<q-args>, {'source': 'ag --hidden --ignore .git --ignore-dir Customers/RP --ignore *.jar -g ""'}, <bang>0)
map <M-1> :Files<CR>
map <M-2> :HFiles<CR>
map <M-3> :Buffers<CR>

" Mappings
:vmap r "_dP
:nmap <c-s> :w<CR>
:imap <c-s> <Esc>:w<CR>a
:nmap <silent> <C-F4> :bd<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nmap <Leader>gs :GFiles?<CR>
nmap <Leader>gn <Plug>(GitGutterNextHunk)  " git next
nmap <Leader>gp <Plug>(GitGutterPrevHunk)  " git previous
nmap <Leader>ga <Plug>(GitGutterStageHunk) " git add (chunk)
nmap <Leader>gu <Plug>(GitGutterUndoHunk)  " git undo (chunk)

"AutoCommands
au FileType json setlocal equalprg=jq\ .
au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null
autocmd FileType python setlocal completeopt-=preview
