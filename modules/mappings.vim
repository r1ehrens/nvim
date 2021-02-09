map j gj
map k gk
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-s> :w<CR>

"map ESC
cnoremap jj <Esc>
imap jj <Esc>l
snoremap jj <esc>l

"map search
nmap * *N
nmap - /

"Alt
nnoremap <M-j> :resize -2<cr>
nnoremap <M-k> :resize +2<cr>
nnoremap <M-h> :vertical resize -2<cr>
nnoremap <M-l> :vertical resize +2<cr>

inoremap <c-u> <esc>viwUi
nnoremap <c-u> viwU<esc>

nnoremap <tab> :bnext<cr>
nnoremap <s-tab> :bprevious<cr>

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

vnoremap < <gv
vnoremap > >gv

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
