call plug#begin()
Plug 'sjl/badwolf'
Plug 'jisaacks/GitGutter'
Plug 'neomake/neomake'
Plug 'rust-lang/rust.vim'
" LANGUAGE CLIENT
Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }
" (Optional) Multi-entry selection UI.
Plug 'junegunn/fzf'
" (Optional) Multi-entry selection UI.
Plug 'Shougo/denite.nvim'
" (Optional) Completion integration with deoplete.
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" (Optional) Completion integration with nvim-completion-manager.
Plug 'roxma/nvim-completion-manager'
" (Optional) Showing function signature and inline doc.
Plug 'Shougo/echodoc.vim'
call plug#end()

syntax on
colorscheme badwolf
set nu
set rnu
set nowrap
set title
set hidden
set cursorline

set mouse=a

" Search
set ignorecase
set smartcase
set hlsearch
set incsearch
set showmatch
nnoremap <CR> :noh<CR><CR>

" Magic indentation bullshit
set backspace=indent,eol,start
set autoindent
set copyindent
set expandtab
set tabstop=4
set shiftwidth=4
set shiftround
set smarttab

set history=10000
set undolevels=10000
set wildignore=*.swp,*.bak,*.pyc,*.class,*.o

filetype plugin indent on

" Show whitespace
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

" Allow bad behavior
noremap ; :

" Shift + tab forces tab
inoremap <S-Tab> <C-V><Tab>

" Enforce good behavior
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

set pastetoggle=<F2>

" Clear search buffer by pressing ,/
nmap <silent> ,/ :nohlsearch<CR>

" did you forget to use sudo? use w!!
cmap w!! w !sudo tee % >/dev/null

" LANGUAGECLIENT
let g:LanguageClient_serverCommands = {
    \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
    \ }

" Automatically start language servers.
let g:LanguageClient_autoStart = 1

nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <F3> :call LanguageClient_textDocument_rename()<CR>

" NEOMAKE
function! OnBattery()
    if(filereadable('sys/class/power_supply/ACAD/online'))
        return readfile('/sys/class/power_supply/ACAD/online') == ['0']
    else
        return -1
    endif
endfunction

if OnBattery()
    call neomake#configure#automake('w')
else
    call neomake#configure#automake('nw', 1000)
endif
