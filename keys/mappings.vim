"NAVIGATION
" Fast split navigation with <Ctrl> + hjkl
nnoremap <c-h> <C-w>h
nnoremap <c-j> <C-w>j
nnoremap <c-k> <C-w>k
nnoremap <c-l> <C-w>l

" allows to move throw visually lines, even if it is same line in vim
noremap j gj
noremap k gk

" In ex-mode jump with <Ctrl> + hl between words
cnoremap <c-h> <c-left>
cnoremap <c-l> <c-right>

" tabnavigation
nnoremap <M-1> 1gt
nnoremap <M-2> 2gt
nnoremap <M-3> 3gt
nnoremap <M-4> 4gt
nnoremap <M-5> 5gt
nnoremap <M-6> 6gt
nnoremap <M-7> 7gt
nnoremap <M-8> 8gt
nnoremap <M-9> 9gt

" open vimrc settings
nnoremap <leader>. :e $MYVIMRC<cr>

" BASIC
" common saving with <Ctrl> + s
nnoremap <c-s> :w<cr>

"create new tab
nnoremap <c-t> :tabnew<cr>

" map ESC
cnoremap jj <esc>
inoremap jj <esc>
snoremap jj <esc>

" shift mappings
vnoremap < <gv
vnoremap > >gv
nnoremap < <<
nnoremap > >>

" FOLDS
nnoremap zt za
nnoremap zO zR
nnoremap zC zM

" WINDOWS
" resizing
nnoremap <m-j> :resize -2<cr>
nnoremap <m-k> :resize +2<cr>
nnoremap <m-h> :vertical resize -2<cr>
nnoremap <m-l> :vertical resize +2<cr>

" ADDITIONAL
" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

" print last yanked
nnoremap yp "0p

" UNUSED
" Terminal window navigation
" cannot be used since fzf is in a terminal
" inoremap <c-h> <c-\><c-N><c-w>h
" inoremap <c-j> <c-\><c-N><c-w>j
" inoremap <c-k> <c-\><c-N><c-w>k
" inoremap <c-l> <c-\><c-N><c-w>l

" does not work somehow!
" nnoremap * :normal *N<cr>

"UNBIND some useless key bindings
nmap Q <nop>
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right>  <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right>  <nop>
