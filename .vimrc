set nocompatible

" change from \ to , for commands
let mapleader=","

" reload/save .vimrc with ,ev ,sv
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" some stuff
set hidden
set title
set nowrap
set number
syntax on

" no beeps and boops
set visualbell
set noerrorbells

" swp files are very 70s
set nobackup
set noswapfile

" Search ignores case, unless you include a capital
set ignorecase
set smartcase

" Search highlights and shows incrementally
set hlsearch
set incsearch
set showmatch

" magical indentation magic
set backspace=indent,eol,start
set autoindent
set copyindent
set expandtab
set tabstop=4
set shiftwidth=4
set shiftround
set smarttab

" Bigger history
set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc,*.class,*.o

filetype plugin indent on

set statusline="%f%m%r%h%w [%Y] [0x%02.2B]%< %F%=%4v,%4l %3p%% of %L"

" Show whitespace
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

" Toggle for paste mode
set pastetoggle=<F2>

" Can now use stuff like ;w ;q
nnoremap ; :

" Force good behavior
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Clear search buffer by presssing ,/
nmap <silent> ,/ :nohlsearch<CR>

" did you forget to use sudo? use w!!
cmap w!! w !sudo tee % >/dev/null
