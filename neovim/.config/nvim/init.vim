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
set foldmethod=indent
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
Plug 'SirVer/ultisnips'
Plug 'mlaursen/vim-react-snippets'
Plug 'epilande/vim-es2015-snippets'
Plug 'honza/vim-snippets'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensioons = [
      \ 'coc-tsserver',
      \ 'coc-json',
      \ 'coc-python',
      \ 'coc-snippets',
      \ 'coc-prettier',
      \ 'coc-eslint'
      \]

" File handling
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Python
Plug 'w0rp/ale'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

" HTML
Plug 'jonsmithers/vim-html-template-literals'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

" Markdown
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' } 

" Testing
Plug 'janko/vim-test'

" Editing
Plug 'tpope/vim-surround'
Plug 'pseewald/vim-anyfold'

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

" CoC
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
inoremap <silent><expr> <c-space> coc#refresh()

" Testing
nmap <silent> <C-F10> :TestNearest<CR>
nmap <silent> <S-F10> :TestFile<CR>

" HTML
let g:closetag_filenames = '*.html,*.js'
let g:html_indent_style1 = "inc"

" FZF
let $FZF_DEFAULT_COMMAND = 'ag --ignore .git -g ""'
command! -bang -nargs=? -complete=dir HFiles
  \ call fzf#vim#files(<q-args>, {'source': 'ag --hidden --ignore .git -g ""'}, <bang>0)
map <M-1> :NERDTreeToggle<CR>
map <M-2> :HFiles<CR>
map <M-3> :Buffers<CR>

" GitGutter
let g:gitgutter_terminal_reports_focus = 0

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
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
