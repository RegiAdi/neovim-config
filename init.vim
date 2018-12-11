" ==== VIMPLUG ===================================================
call plug#begin()

Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdcommenter'
Plug 'mattn/emmet-vim'
Plug 'easymotion/vim-easymotion'
Plug 'Yggdroot/indentLine'

call plug#end()
" ==== END::VIMPLUG ===================================================

" NERDTREE
autocmd VimEnter * NERDTree
autocmd BufWinEnter * NERDTreeMirror

" INDENTLINE
let g:indentLine_char = '┆'

    " disable auto-hide double quote in json
    let g:indentLine_setConceal = 0

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

" Enable syntax highlighting
syntax on

" Enable filetype detection
filetype on

" Enable filetype-specific indenting
filetype indent on

" Enable filetype-specific plugins
filetype plugin on

" set color scheme
colorscheme solarized
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

