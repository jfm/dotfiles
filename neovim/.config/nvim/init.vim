syntax on
filetype indent on

let mapleader="½"

set encoding=utf-8
" set clipboard=unnamed
" set clipboard+=unnamedplus
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

let g:ale_disable_lsp = 1
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
      \ 'coc-pyright',
      \ 'coc-snippets',
      \ 'coc-prettier',
      \ 'coc-eslint'
      \]

" File handling
Plug 'preservim/nerdtree'
Plug 'mcchrish/nnn.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Python
Plug 'w0rp/ale'
Plug 'mfussenegger/nvim-dap-python'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

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

" Debugging
Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'

" Editing
Plug 'tpope/vim-surround'
Plug 'pseewald/vim-anyfold'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
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
let g:airline_symbols.branch = '⎇'

" CoC
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
inoremap <silent><expr> <c-space> coc#refresh()

"DAP
lua require('dap-python').setup('~/.venvs/debugpy/bin/python')
lua require('dap-python').test_runner = 'pytest'
"lua require("dapui").setup()
lua << EOF
require("dapui").setup({
  icons = { expanded = "▾", collapsed = "▸" },
  mappings = {
    -- Use a table to apply multiple mappings
    expand = { "<CR>", "<2-LeftMouse>" },
    open = "o",
    remove = "d",
    edit = "e",
    repl = "r",
    toggle = "t",
  },
  sidebar = {
    -- You can change the order of elements in the sidebar
    elements = {
      -- Provide as ID strings or tables with "id" and "size" keys
      {
        id = "scopes",
        size = 0.25, -- Can be float or integer > 1
      },
      { id = "breakpoints", size = 0.25 },
      { id = "stacks", size = 0.25 },
      { id = "watches", size = 00.25 },
    },
    size = 40,
    position = "right", -- Can be "left", "right", "top", "bottom"
  },
  tray = {
    elements = { "repl" },
    size = 10,
    position = "bottom", -- Can be "left", "right", "top", "bottom"
  },
  floating = {
    max_height = nil, -- These can be integers or a float between 0 and 1.
    max_width = nil, -- Floats will be treated as percentage of your screen.
    border = "single", -- Border style. Can be "single", "double" or "rounded"
    mappings = {
      close = { "q", "<Esc>" },
    },
  },
  windows = { indent = 1 },
})
local dap, dapui = require("dap"), require("dapui")
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end
EOF
nnoremap <silent> <F9> :lua require'dap'.continue()<CR>                     
nnoremap <silent> <F21> :lua require('dap-python').test_method()<CR>
nnoremap <silent> <F8> :lua require'dap'.step_over()<CR>                   
nnoremap <silent> <F20> :lua require'dap'.step_into()<CR>                   
nnoremap <silent> <F32> :lua require'dap'.step_out()<CR>                    
nnoremap <silent> <leader>b :lua require'dap'.toggle_breakpoint()<CR>       

" UltiSnips
let g:UltiSnipsExpandTrigger="<c-e>"

" Testing
let test#python#runner = 'pytest'
nmap <silent> <F34> :TestNearest<CR>
nmap <silent> <F22> :TestFile<CR>
"
" HTML
let g:closetag_filenames = '*.html,*.js'
let g:html_indent_style1 = "inc"

" MARKDOWN
let g:mkdp_browser = 'firefox'

" FZF
let $FZF_DEFAULT_COMMAND = 'ag --ignore .git -g ""'
command! -bang -nargs=? -complete=dir HFiles
  \ call fzf#vim#files(<q-args>, {'source': 'ag --hidden --ignore .git -g ""'}, <bang>0)
" map <M-1> :NERDTreeToggle<CR>
map <M-1> :NnnPicker<CR>
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
