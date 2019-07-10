call plug#begin()
Plug 'sjl/badwolf'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2'
    Plug 'ncm2/ncm2-bufword'
    Plug 'ncm2/ncm2-path'
    Plug 'ncm2/ncm2-syntax' | Plug 'Shougo/neco-syntax'
    Plug 'ncm2/ncm2-pyclang'
    Plug 'ncm2/ncm2-match-highlight'
    Plug 'ncm2/ncm2-html-subscope'
    Plug 'ncm2/ncm2-markdown-subscope'
    Plug 'ncm2/ncm2-bufword'
    Plug 'ncm2/ncm2-jedi'
    Plug 'ncm2/ncm2-cssomni'


" " LANGUAGE CLIENT
Plug 'autozimu/LanguageClient-neovim', { 
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
" Plug 'rust-lang/rust.vim'

" " (Optional) Multi-entry selection UI.
" Plug 'Shougo/denite.nvim'
" " (Optional) Showing function signature and inline doc.
" Plug 'Shougo/echodoc.vim'

" " Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
Plug 'nathanaelkane/vim-indent-guides'

" Browser things

" Tim Pope
" Plug 'tpope/vim-surround'
" Plug 'tpope/vim-fugitive'
" Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-commentary'

" Visualizing undo tree 
Plug 'sjl/gundo.vim'

" Plug 'easymotion/vim-easymotion'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown', {'for' : 'markdown'}
call plug#end()

" some core stuff
colorscheme badwolf
syntax enable
set nu
set rnu
set hidden
set cursorline
set mouse=a
set termguicolors
set wildmenu
set lazyredraw
set pastetoggle=<F2>

" Search
set ignorecase
set smartcase
set hlsearch
set incsearch
set showmatch
set showcmd

" Indentation
set backspace=indent,eol,start
set autoindent
set copyindent
set expandtab
set tabstop=4
set shiftwidth=4
set shiftround
set smarttab
filetype plugin indent on
set colorcolumn=80

" Folding
set foldenable
set foldmethod=syntax
set foldlevelstart=50
set foldnestmax=10

" History
set history=10000
set undolevels=10000
set wildignore=*.swp,*.bak,*.pyc,*.class,*.o

" Show whitespace
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

set clipboard=unnamedplus

runtime binds.vim
runtime plugins.vim

