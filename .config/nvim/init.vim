call plug#begin()
Plug 'sjl/badwolf'

Plug 'airblade/vim-gitgutter'
Plug 'neomake/neomake'
Plug 'roxma/nvim-completion-manager'

" LANGUAGE CLIENT
Plug 'autozimu/LanguageClient-neovim', { 
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
" (Optional) Completion integration with deoplete.
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'sebastianmarkow/deoplete-rust'
Plug 'Shougo/deoplete-clangx'
Plug 'zchee/deoplete-jedi'
" (Optional) Multi-entry selection UI.
Plug 'junegunn/fzf'

Plug 'rust-lang/rust.vim'

" (Optional) Multi-entry selection UI.
Plug 'Shougo/denite.nvim'
" (Optional) Showing function signature and inline doc.
Plug 'Shougo/echodoc.vim'

" Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
Plug 'nathanaelkane/vim-indent-guides'

" Browser things
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'

" Minimap
Plug 'severin-lemaignan/vim-minimap'
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

set pastetoggle=<F2>

" did you forget to use sudo? use w!!
cmap w!! w !sudo tee % >/dev/null

" LANGUAGECLIENT
let g:LanguageClient_serverCommands = {
    \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
    \ 'cpp': ['clangd'],
    \ 'c': ['clangd'],
    \ 'python': ['pyls'],
    \ }

" Automatically start language servers.
let g:LanguageClient_autoStart = 1

nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <F3> :call LanguageClient_textDocument_rename()<CR>

" Rust
let g:rustfmt_autosave = 1

" GitGutter
let g:gitgutter_enabled = 1
let g:gitgutter_signs = 1

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
    call neomake#configure#automake('nw', 250)
endif

" Deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1

" disable autocomplete by default
let b:deoplete_disable_auto_complete=1 
let g:deoplete_disable_auto_complete=1
call deoplete#custom#buffer_option('auto_complete', v:false)

if !exists('g:deoplete#omni#input_patterns')
    let g:deoplete#omni#input_patterns = {}
endif

" Disable the candidates in Comment/String syntaxes.
call deoplete#custom#source('_',
            \ 'disabled_syntaxes', ['Comment', 'String'])

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" set sources
let g:deoplete#sources = {}
let g:deoplete#sources.cpp = ['LanguageClient']
let g:deoplete#sources.python = ['LanguageClient']
let g:deoplete#sources.python3 = ['LanguageClient']
let g:deoplete#sources.rust = ['LanguageClient']
let g:deoplete#sources.c = ['LanguageClient']
let g:deoplete#sources.vim = ['vim']

" deoplete-racer config
let g:deoplete#sources#rust#racer_binary='/home/irandms/.cargo/bin/racer'
let g:deoplete#sources#rust#rust_source_path= '/home/irandms/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src'
let g:deoplete#sources#rust#show_duplicates=1

" Change clang options 
call deoplete#custom#var('clangx', 'clang_binary', '/usr/bin/clang')
call deoplete#custom#var('clangx', 'default_c_options', '-Wall -Wpedantic -Weverything')
call deoplete#custom#var('clangx', 'default_cpp_options', '-Wall -Wpedantic -Weverything')

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
