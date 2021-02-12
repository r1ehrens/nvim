" allows to move throw visually lines, even if it is same line in vim
noremap j gj
noremap k gk

" Immediately add closing quotes or braces in insert mode
inoremap ' ''<esc>i
inoremap " ""<esc>i
inoremap ( ()<esc>i
inoremap { {}<esc>i
inoremap [ []<esc>i

" Fast split navigation with <Ctrl> + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" In ex-mode jump with <Ctrl> + hl between words
cnoremap <c-h> <c-left>
cnoremap <c-l> <c-right>

" common saving with <Ctrl> + s
nnoremap <C-s> :w<cr>

" close window
nnoremap <leader>q :q<cr>

" map ESC
cnoremap jj <Esc>
inoremap jj <Esc>l
snoremap jj <esc>l

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
nnoremap <M-j> :resize -2<cr>
nnoremap <M-i> :resize +2<cr>
nnoremap <M-h> :vertical resize -2<cr>
nnoremap <M-l> :vertical resize +2<cr>

" Use tab to switch to next buffer
nnoremap <tab> :bnext<cr>
nnoremap <s-tab> :bprevious<cr>

" with enter add everything from popup menu
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" shift mappings
vnoremap < <gv
vnoremap > >gv
nnoremap < <<
nnoremap > >>

"Unbind some useless key bindings
nmap Q <Nop>
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right>  <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right>  <Nop>
