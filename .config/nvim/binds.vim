" Movement
nnoremap <c+j> <c+J>

" Search
nnoremap <CR> :noh<CR><CR>

" Indentation
" Shift + tab forces tab
inoremap <S-Tab> <C-V><Tab>

" Clipboard
" Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy
" Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" Easier movement
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Allow bad behavior
noremap ; :
" jk as escape
inoremap jk <esc>
" did you forget to use sudo? use w!!
cmap w!! w !sudo tee % >/dev/null

