if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugs')
" Themes
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" C++ syntax highlighting
Plug 'jackguo380/vim-lsp-cxx-highlight'
" nice icons
Plug 'ryanoasis/vim-devicons'

" display <leader> mappings
Plug 'liuchengxu/vim-which-key'

" easy commentary
Plug 'tpope/vim-commentary'

" auto completion and much more
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" find files
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" working directory is start of project
Plug 'airblade/vim-rooter'

" vim startpage
Plug 'mhinz/vim-startify'

" snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" ranger for vim
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

" displays undotree
Plug 'mbbill/undotree'

" able to swap desired windows
Plug 'wesQ3/vim-windowswap'

" live markdown preview in firefox
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

" navigation and text manipulation
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'

" floating window
Plug 'voldikss/vim-floaterm'

" interactive refactoring
Plug 'brooth/far.vim'

" Git
" displays git status for each line
Plug 'mhinz/vim-signify'

" Git in vim
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'

" compile and build in vim
Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.vim'

" pulse when entry found
Plug 'inside/vim-search-pulse'

" better tmux integration
Plug 'christoomey/vim-tmux-navigator'

" testing in vim
Plug 'janko-m/vim-test'

" distraction-free writing
Plug 'junegunn/goyo.vim'

" allows to repeat plugin mappings with '.'
Plug 'tpope/vim-repeat'

" A Vim Plugin for Lively Previewing LaTeX PDF Output
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'lervag/vimtex'

" requires nvim 0.5

"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()
