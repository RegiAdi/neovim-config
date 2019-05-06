" ==== VIMPLUG ===================================================
call plug#begin()

"Plug 'altercation/vim-colors-solarized'
"Plug 'scrooloose/nerdtree'
"Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdcommenter'
Plug 'mattn/emmet-vim'
Plug 'easymotion/vim-easymotion'
Plug 'Yggdroot/indentLine'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'raimondi/delimitmate'
Plug 'sheerun/vim-polyglot'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'fatih/vim-go'

call plug#end()
" ==== END::VIMPLUG ===================================================

"File Explorer
" changing the directory view in netrw
let g:netrw_liststyle = 3

"removing the banner
let g:netrw_banner = 0

"CtrlP
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_map = '<leader>p'

" NERDTREE
"autocmd VimEnter * NERDTree
"autocmd BufWinEnter * NERDTreeMirror

" INDENTLINE
let g:indentLine_char = '┊'

" highlight conceal color with colorscheme
let g:indentLine_color_term = 239

" disable auto-hide double quote in json
"let g:indentLine_setConceal = 0
let g:vim_json_syntax_conceal = 0

" AIRLINE
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

" DELIMITMATE
" turns on the expansion of <CR>
let delimitMate_expand_cr = 1
" turns on the expansion of <Space>
let delimitMate_expand_space = 1

" EMMET
" expand emmet using <tab>
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

" Don't include vi compatibility
set nocompatible

" Better buffer management - hide buffers instead of closing them
set hidden

" Default history is only 20
set history=100

" Use more levels of undo
set undolevels=100

" change tab to spaces
set expandtab

" a tab is 2 spaces
set tabstop=4

" tab size when insterting/pasting
set softtabstop=4

" number of spaces to use for autoindenting

" use multiple of shiftwidth when indenting with '<' and '>'
set shiftwidth=4
set shiftround

" insert tabs on the start of a line according to shiftwidth, not tabstop
set smarttab

" always set autoindenting on
set autoindent

" copy the previous indentation on autoindenting
set copyindent

" dont fold by default
set nofoldenable

" Ruler on
set ruler

" display ruler
set colorcolumn=80

" Line numbers on
set nu

" Line highlight
set cursorline

" dont use backup files
set nobackup
set noswapfile

" disable word wrap
set nowrap

" Enable syntax highlighting
syntax on

" Enable filetype detection
filetype on

" Enable filetype-specific indenting
filetype indent on

" Enable filetype-specific plugins
filetype plugin on

" set color scheme
colorscheme gruvbox
set background=dark

" number of lines of context to keep above and below
" the cursor while scrolling
set scrolloff=4

" don't beep
set visualbell
set noerrorbells

" Auto read when a file is changed on disk
set autoread

" auto remove whitespace on buffer save
autocmd! BufWrite * mark ' | silent! %s/\s\+$// | norm ''


" ======== KEYBINDINGS ========
" change leader
let mapleader = ','

" change escape key to hh
imap hh <Esc>

" open NERDTree using <leader>n
"nmap <leader>n :NERDTree<cr>

" easier buffer switching
nmap <leader>bn :bn<cr>
nmap <leader>bp :bp<cr>
nmap <leader>bd :bd<cr>
nmap <leader>bb :ls<cr>:b<space>
