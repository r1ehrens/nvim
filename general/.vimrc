"      (_)
"__   ___ _ __ ___  _ __ ___ 
"\ \ / / | '_ ` _ \| '__/ __|
 "\ V /| | | | | | | | | (__ 
"(_)_/ |_|_| |_| |_|_|  \___|



" adds a letter to a 'word'
"set iskeyword+=-

" load plugin file(ftplugin directory), load indent file and turn on filetype
" detection
filetype plugin indent on

" Should prevent ato commenting when pressing 'o' or '<cr>' in insert mode.
" Does not work since formatoptions is later set again
" see verb set fo
"set formatoptions-=cro

set nocompatible

" automatic indent when pressing '<cr>' or 'o'
set autoindent

" add spaces instead of tab
set expandtab

" tab counts as 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround

" Use one space, not two, after punctuation in command
set nojoinspaces

" show command in last line of screen
set showcmd
let mapleader = "\<space>"

" do not generate any swapfiles
set noswapfile
"
"display tabs and trailing whitespaces
set list listchars=tab:»·,trail:·,nbsp:·

set textwidth=80
set colorcolumn=+1

" searches don't go over EOF
"set nowrapscan

" don't show checked after a command
set modelines=0
set nomodeline

" enable syntax highlighting
syntax on
set noerrorbells visualbell t_vb=

" allow to backspace to line before
set backspace=indent,eol,start

" always 7 lines away from end of screen
set scrolloff=7

" allow to move away from unsaved buffer
set hidden
set encoding=utf-8
set fileencoding=utf-8

set splitbelow
set splitright
set clipboard=unnamedplus

" display cursorline
set cursorline

" always display tab
set showtabline=2

" Always use vertical diff
set diffopt+=vertical
" Default to not read-only in vimdiff
set noro

" smartcase = when typing uppercase, find uppercase
set hlsearch incsearch ignorecase smartcase

" History
set history=50

" Number
set number
set numberwidth=5
"set relativenumber

" Menu
set wildmenu

" Fold unfortunatly has a lot of problems with plugins
" will open all folds when opening a buffer
"autocmd BufRead * normal zR
" fold everything that is indent
"set foldmethod=indent
" give space for fold display
"set foldcolumn=1
set nofoldenable

" Set up persistent undo across all files.
" create undodir if not already exist
set undofile
if !isdirectory(expand("$HOME/.config/nvim/.undodir"))
  call mkdir(expand("$HOME/.config/nvim/.undodir"), "p")
endif
set undodir=$HOME/.config/nvim/.undodir
set undolevels=1000

set updatetime=300
" time to be able to type an additional key
set timeoutlen=500
" <esc> delay
set ttimeoutlen=0

" would create a backup-file everytime a file is overwritten
set nobackup
set nowritebackup
" 2 lines for command
set cmdheight=2

" don't give completion messages
set shortmess+=c

"Enables to search with '*' for visual selected, not just for word under
"cursor
xnoremap * :<C-u>call <SID>VSetSearch('/')<CR>/<C-R>=@/<CR><CR>
xnoremap # :<C-u>call <SID>VSetSearch('?')<CR>?<C-R>=@/<CR><CR>

function! s:VSetSearch(cmdtype)
  let temp = @s
  norm! gv"sy
  let @/ = '\V' . substitute(escape(@s, a:cmdtype.'\'), '\n', '\\n', 'g')
  let @s = temp
endfunction

" When editing a file, always jump to the last known cursor position.
" Don't do it for commit messages, when the position is invalid, or when
" inside an event handler (happens when dropping a file on gvim).
autocmd BufReadPost *
    \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif
