set shell=/bin/zsh
let mapleader = "\<Space>"

set nocompatible
filetype off

call plug#begin()
Plug 'sjl/badwolf'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2'
    Plug 'ncm2/ncm2-bufword'
    Plug 'ncm2/ncm2-path'
    Plug 'ncm2/ncm2-tmux'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'rust-lang/rust.vim'

" " LANGUAGE CLIENT
Plug 'autozimu/LanguageClient-neovim', { 
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nathanaelkane/vim-indent-guides'

" Browser things

" Tim Pope
" Plug 'tpope/vim-surround'
" Plug 'tpope/vim-fugitive'
" Plug 'tpope/vim-unimpaired'
" Plug 'tpope/vim-commentary'

" Visualizing undo tree 
" Plug 'sjl/gundo.vim'

" Plug 'easymotion/vim-easymotion'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown', {'for' : 'markdown'}
Plug 'justinmk/vim-sneak'
Plug 'airblade/vim-rooter'
call plug#end()

" some core stuff
set hidden
set cursorline
set mouse=a
set termguicolors
set lazyredraw
set pastetoggle=<F2>

set showcmd

" Folding
set foldenable
set foldmethod=syntax
set foldlevelstart=50
set foldnestmax=10

" History
set history=10000
set undolevels=10000
set clipboard=unnamedplus

" where am i?
set ruler
set ttyfast

" Decent wildmenu
set wildmenu
set wildignore=*.swp,*.bak,*.pyc,*.class,*.o,.hg,.svn,*~,*.png,*.jpg,*.gif,*.settings,Thumbs.db,*.min.js,publish/*,intermediate/*,*.hi,Zend,vendor

runtime binds.vim
runtime plugins.vim
runtime display.nvim
runtime filetypes.nvim
runtime search.nvim
runtime splits.nvim
runtime swap.nvim
runtime undo.nvim
runtime whitespace.nvim
runtime wrapping.nvim
