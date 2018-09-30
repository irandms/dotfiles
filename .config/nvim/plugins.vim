" LANGUAGECLIENT
" let g:LanguageClient_serverCommands = {
"     \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
"     \ 'cpp': ['clangd'],
"     \ 'c': ['clangd'],
"     \ 'python': ['pyls'],
"     \ }

" Automatically start language servers.
" let g:LanguageClient_autoStart = 1

" nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
" nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
" nnoremap <silent> <F3> :call LanguageClient_textDocument_rename()<CR>

" Rust
" let g:rustfmt_autosave = 1

" GitGutter
let g:gitgutter_enabled = 1
let g:gitgutter_signs = 1

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" NEOMAKE
" function! OnBattery()
"     if(filereadable('sys/class/power_supply/ACAD/online'))
"         return readfile('/sys/class/power_supply/ACAD/online') == ['0']
"     else
"         return -1
"     endif
" endfunction

" if OnBattery()
"     call neomake#configure#automake('w')
" else
"     call neomake#configure#automake('nw', 250)
" endif

" Deoplete
" let g:deoplete#enable_at_startup = 1
" let g:deoplete#enable_smart_case = 1

" " disable autocomplete by default
" let b:deoplete_disable_auto_complete=1 
" let g:deoplete_disable_auto_complete=1
" call deoplete#custom#buffer_option('auto_complete', v:false)

" if !exists('g:deoplete#omni#input_patterns')
"     let g:deoplete#omni#input_patterns = {}
" endif

" Disable the candidates in Comment/String syntaxes.
" call deoplete#custom#source('_', 'disabled_syntaxes', ['Comment', 'String'])

" autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" set sources
" let g:deoplete#sources = {}
" let g:deoplete#sources.cpp = ['LanguageClient']
" let g:deoplete#sources.python = ['LanguageClient']
" let g:deoplete#sources.python3 = ['LanguageClient']
" let g:deoplete#sources.rust = ['LanguageClient']
" let g:deoplete#sources.c = ['LanguageClient']
" let g:deoplete#sources.vim = ['vim']

" " deoplete-racer config
" let g:deoplete#sources#rust#racer_binary='/home/irandms/.cargo/bin/racer'
" let g:deoplete#sources#rust#rust_source_path= '/home/irandms/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src'
" let g:deoplete#sources#rust#show_duplicates=1

" Change clang options 
" call deoplete#custom#var('clangx', 'clang_binary', '/usr/bin/clang')
" call deoplete#custom#var('clangx', 'default_c_options', '-Wall -Wpedantic -Weverything')
" call deoplete#custom#var('clangx', 'default_cpp_options', '-Wall -Wpedantic -Weverything')

" vim-minimap
"
