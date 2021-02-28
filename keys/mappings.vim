" allows to move throw visually lines, even if it is same line in vim
noremap j gj
noremap k gk

" Immediately add closing quotes or braces in insert mode
"inoremap ' ''<esc>i
"inoremap " ""<esc>i
"inoremap ( ()<esc>i
"inoremap { {}<esc>i
"inoremap [ []<esc>i

" Terminal window navigation
tnoremap <c-h> <c-\><c-N><c-w>h
tnoremap <c-j> <c-\><c-N><c-w>j
tnoremap <c-k> <c-\><c-N><c-w>k
tnoremap <c-l> <c-\><c-N><c-w>l
inoremap <c-h> <c-\><c-N><c-w>h
inoremap <c-j> <c-\><c-N><c-w>j
inoremap <c-k> <c-\><c-N><c-w>k
inoremap <c-l> <c-\><c-N><c-w>l

" Move selected line / block of text in visual mode

xnoremap K :move '<-2<cr>gv-gv
xnoremap J :move '>+1<cr>gv-gv

" Fast split navigation with <Ctrl> + hjkl
nnoremap <c-h> <C-w>h
nnoremap <c-j> <C-w>j
nnoremap <c-k> <C-w>k
nnoremap <c-l> <C-w>l

" In ex-mode jump with <Ctrl> + hl between words
cnoremap <c-h> <c-left>
cnoremap <c-l> <c-right>

" common saving with <Ctrl> + s
nnoremap <c-s> :w<cr>

" close window
nnoremap <leader>q :q<cr>

" map ESC
cnoremap jj <esc>
inoremap jj <esc>
snoremap jj <esc>
tnoremap jj <c-\><c-n>
" cannot be used since ranger is also in a terminal!
"tnoremap <esc> <c-\><c-n>

" map search
nnoremap * *N
nnoremap - /

" print last yanked
nnoremap yp "0p

" folds
nnoremap zt za
nnoremap zo zR
nnoremap zc zM

" resizing windows
nnoremap <m-j> :resize -2<cr>
nnoremap <m-k> :resize +2<cr>
nnoremap <m-h> :vertical resize -2<cr>
nnoremap <m-l> :vertical resize +2<cr>

" Use tab to switch to next buffer
nnoremap <tab> :bnext<cr>
nnoremap <s-tab> :bprevious<cr>


" shift mappings
vnoremap < <gv
vnoremap > >gv
nnoremap < <<
nnoremap > >>

" coc mappings

" with enter add everything from popup menu
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Easymotion mappings
map , <Plug>(easymotion-prefix)


"Unbind some useless key bindings
nmap Q <nop>
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right>  <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right>  <nop>
